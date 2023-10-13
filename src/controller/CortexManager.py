from typing import Any
from src.utils.SingletonMeta import SingletonMeta
from cg_engine.src.main_lib.Engine import *


class CortexManager(metaclass=SingletonMeta):

    def __init__(self) -> None:
        self.neural_net_matrix = []
        self.engine : Engine = None
        self.local_neural_net = []
        # engine = Engine(NNetMatrix)
        # result = engine.run([[1,2,3], [4,5,6,7]])
        # print(result) 

    def init_local_neural_net(self):
        self.local_neural_net = [LocalNeuralNet(nn) for nn in self.neural_net_matrix]
        for neural_net in self.local_neural_net:
            next_ids = [nn for nn in self.neural_net_matrix if nn.id == neural_net.id][0].get_next_ids()
            neural_net.next_NN = [nn for nn in self.local_neural_net if nn.id in next_ids]
            previous_ids = [nn for nn in self.neural_net_matrix if nn.id == neural_net.id][0].get_previous_ids()
            neural_net.previous_NN = [nn for nn in self.local_neural_net if nn.id in previous_ids]
 
    def start(self, data):
        self.init_local_neural_net()
    
        self.engine = Engine(self.local_neural_net)
        result = self.engine.run(data)
        print(result)
        return result
    
class LocalNeuralNet(INeuralNetwork):

    def __init__(self, db_neural_network):
        super().__init__(db_neural_network.nn_position)
        self.id = db_neural_network.id
        # self.next_NN = [LocalNeuralNet(nn) for nn in list(db_neural_network.next_neural_network.all())]
        # self.previous_NN = [LocalNeuralNet(nn) for nn in list(db_neural_network.previous_neural_network.all())]