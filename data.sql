delete from src_tflayertype;
delete from src_tflayertypeoption;
delete from src_tflayertype_options; 

INSERT INTO src_tflayertype (id, name) VALUES
	 (2, 'Dense'),
	 (3, 'Convolutionnal 2D'),
	 (4, 'Simple RNN'),
	 (5, 'LSTM'),
	 (6, 'GRU'),
	 (7, 'Max pooling 2D'),
	 (8, 'Average pooling 2D'),
	 (9, 'Dropout'),
	 (10, 'Batch normalisation'),
	 (11, 'Activation');
INSERT INTO src_tflayertype (id, name) VALUES
	 (12, 'Flatten'),
	 (13, 'Global max pooling 2D'),
	 (14, 'Global average pooling 2D');


INSERT INTO src_tflayertypeoption (id, name,"type",possible_values) VALUES
	 (1, 'Units','integer','[]'),
	 (2, 'Activation','string','["None (linear)", "ReLu", "Sigmoid", "Tanh", "Leaky ReLu", "Maxout", "Softmax", "SiLU (swish)", "GeLU"]'),
	 (3, 'Filters','integer','[]'),
	 (4, 'Kernel width','integer','[]'),
	 (5, 'Kernel height','integer','[]'),
	 (6, 'Padding','string','["valid", "same"]'),
	 (7, 'Input shape timesteps','integer','[]'),
	 (8, 'Input shape features','integer','[]'),
	 (9, 'Return sequences','boolean','["true", "false"]'),
	 (10, 'Dropout','float','[0, 1]');
INSERT INTO src_tflayertypeoption (id, name,"type",possible_values) VALUES
	 (11, 'Pool size x','integer','[]'),
	 (12, 'Pool size y','integer','[]'),
	 (13, 'Horizontal stride','integer','[]'),
	 (14, 'Vertical stride','integer','[]'),
	 (15, 'Data format','string','["Channels last", "Channels first"]'),
	 (16, 'Noise shape','integer','[]'),
	 (17, 'Seed','integer','[]'),
	 (18, 'Trainable','boolean','["true", "false"]'),
	 (19, 'Center','boolean','["true", "false"]'),
	 (20, 'Scale','boolean','["true", "false"]');
INSERT INTO src_tflayertypeoption (id, name,"type",possible_values) VALUES
	 (21, 'Momentum','float','[0, 1]'),
	 (22, 'Epsilon','float','[0, 1]');



INSERT INTO src_tflayertype_options (tflayertype_id,tflayertypeoption_id) VALUES
	 (2,1),
	 (2,2),
	 (3,2),
	 (3,3),
	 (3,4),
	 (3,5),
	 (3,6),
	 (4,8),
	 (4,1),
	 (4,2);
INSERT INTO src_tflayertype_options (tflayertype_id,tflayertypeoption_id) VALUES
	 (4,7),
	 (5,1),
	 (5,2),
	 (5,7),
	 (5,8),
	 (5,9),
	 (5,10),
	 (6,1),
	 (6,2),
	 (6,7);
INSERT INTO src_tflayertype_options (tflayertype_id,tflayertypeoption_id) VALUES
	 (6,8),
	 (6,9),
	 (6,10),
	 (7,6),
	 (7,11),
	 (7,12),
	 (7,13),
	 (7,14),
	 (7,15),
	 (8,6);
INSERT INTO src_tflayertype_options (tflayertype_id,tflayertypeoption_id) VALUES
	 (8,11),
	 (8,12),
	 (8,13),
	 (8,14),
	 (8,15),
	 (9,16),
	 (9,17),
	 (9,10),
	 (9,18),
	 (10,19);
INSERT INTO src_tflayertype_options (tflayertype_id,tflayertypeoption_id) VALUES
	 (10,20),
	 (10,21),
	 (10,22),
	 (11,2),
	 (11,18),
	 (13,18),
	 (13,15),
	 (14,18);