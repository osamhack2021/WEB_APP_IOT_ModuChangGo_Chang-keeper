const express = require('express');
const router = express.Router();
const Storage = require('../models/storages');
const Product = require('../models/product');

// 창고 현황
router.get('/', function(req,res){
    Storage.find({}, function(err, storage){
        if(err) return res.status(500).send({error: 'database failure'});
        res.json(storage);
    })
});

// 창고 자세히 보기
router.get('/:storageName', function(req, res){
    Product.find({storageName: req.params.storageName}, function(err, product){
        if(err) return res.status(500).json({error: err});
        if(!product) return res.status(404).json({error: 'product not found'});
        res.json(product);
    })
});


// 창고 추가
router.post('/add', async function(req, res){

	const storage = new Storage();
	storage.storageName = req.body.storageName;
	storage.location = req.body.location;
	storage.manager = req.body.manager;
	storage.image = req.body.image;

	const storageCheck = await Storage.findOne({storageName:storage.storageName});
	if (storageCheck == null){
		storage.save(function(err){
			if(err){
				res.json({result: 0, error:err});
			}
			res.json({result: 1, storage:storage});
		});			
	} else {
		res.json({result:0, error:"storage already exists"});
	}

});

//창고 수정
router.put('/edit/:storageName', function(req, res){
    Storage.updateOne({storageName: req.params.storageName }, { $set: req.body }, function(err, output){
        if(err) res.status(500).json({ error: 'database failure' });
        if(!output.modifiedCount) return res.status(404).json({ error: 'storage not found' });
        res.json( {updateStorage:req.params.storageName, result: 1} );
        }
    );
});

//창고 삭제
router.delete('/:storageName', function(req, res){
    Storage.deleteOne({ storageName: req.params.storageName }, function(err, output){
        if(err) return res.status(500).json({ error: "delete failed"});
		if(!output.deletedCount) return res.status(404).json({ error: 'storage not found' });
        res.json({deleteStorage:req.params.storageName, result: 1});
    })
});






module.exports = router;