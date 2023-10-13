from models import NeuralNetworkConfig
from django.dispatch import receiver 

from django.db.models.signals import post_save 

@receiver(post_save, sender=NeuralNetworkConfig)
def new_neuralNetworkConfig_handler(sender, instance : NeuralNetworkConfig, created, **kwargs):
    if created:
        # Trigger logic here

        

        print(f"New NeuralNetworkConfig added: {instance.index}")