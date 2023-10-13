from rest_framework import serializers
from .models import Layer, TFOption, TFLayerType

class TFOptionSerializer(serializers.ModelSerializer):

    class Meta:
        model = TFOption
        fields = ('id', 'option_name', 'option')

class LayerSerializer(serializers.ModelSerializer):

    options = TFOptionSerializer(many=True)

    class Meta:
        model = Layer
        fields = ('id', 'name', 'type', 'options')

    def create(self, validated_data):
        options_data = validated_data.pop('options')
        layer = Layer.objects.create(**validated_data)
        for option_data in options_data:
            TFOption.objects.create(layer=layer, **option_data)
        return layer
