"""
Created on Tue Feb  9 21:21:47 2021

@author: mrozt
"""
import numpy as np

# =============================================================================
# def model(X, Y, nn_archit, dim_layers, parameters, grads,
#           learning_rate = 0.01,
#           optim_func = "grad_desc", beta = 0.9, beta1 = 0.9, beta2 = 0.99,
#           epsilon = 1e-8, minibatch_size=64):
#
# =============================================================================


class NeuralNetwork():
    """Construct a neural network and train it on data.

    Public methods:

    Instance variables:
    self.layer_dims
    self.layer_activ_func
    self.params
    self.pre-activ
    """

    def __init__(self, layer_dims, layer_activ_func, cost_func):
        """Initialize weights and biases in a dictionary.

        Parameters
        ----------
        layer_dims : list
            This is a list of the number of neurons in each layer. Note that
            the first element of the list should be the input layer size.
        layer_activ_func : list
            This is a list of the activation functions for each layer. This
            list should be the same length as layer_dims. Note that the first
            element should be None, since no activation function is applied to
            the input layer. The possible activation functions include the
            ReLU, Tanh, Sigmoid, and Softmax functions. These should be set
            using "relu", "tanh", "sigmoid", and "softmax" as the elements,
            respectively.
        cost_func : string
            This is a string with the name of the cost function being used to
            penalize incorrect predictions.

        Raises
        ------
        ValueError
            Raised if layer_dims and layer_activ_func have different lengths.

        Returns
        -------
        None.
        """
        if len(layer_dims) != len(layer_activ_func):
            raise ValueError("layer_dims and layer_activ_func must be the "
                             "same length")

        self.layer_dims = layer_dims
        self.layer_activ_func = layer_activ_func
        self.cost_func = cost_func
        self.params = {}
        self._cache = {}

        # He initialization for ReLU, Xavier for everything else.
        for layer in range(len(layer_dims)-1):
            if layer_activ_func[layer+1] == "relu":
                self.params["W"+str(layer+1)] = np.random.randn(
                    layer_dims[layer+1], layer_dims[layer])*np.sqrt(
                        2/(layer_dims[layer]+layer_dims[layer+1]))
            elif layer_activ_func[layer+1] == "tanh" or "sigmoid" or "softmax":
                self.params["W"+str(layer+1)] = np.random.randn(
                    layer_dims[layer+1], layer_dims[layer])*np.sqrt(
                        1/layer_dims[layer])
            self.params["b"+str(layer+1)] = np.zeros((layer_dims[layer+1], 1))

    def _sigmoid(self, x):
        # Implement the sigmoid function.
        return 1/(1+np.exp(x))

    def _relu(self, x):
        # Implement the ReLU function.
        return np.maximum(0, x)

    def _softmax(self, x):
        # Implement the softmax function.
        return np.exp(x)/np.sum(np.exp(x))

    def _forward_prop_step(self, x_in, layer):
        # Take one step of forward propagation, including activation.
        Z = (np.dot(self.params["W"+str(layer)], x_in)
             + self.params["b"+str(layer)])
        if self.layer_activ_func[layer] == "relu":
            A = self._relu(Z)
        elif self.layer_activ_func[layer] == "tanh":
            A = np.tanh(Z)
        elif self.layer_activ_func[layer] == "sigmoid":
            A = self._sigmoid(Z)
        elif self.layer_activ_func[layer] == "softmax":
            A = self._softmax(Z)
        return A, Z

    def _forward_prop(self, x_batch):
        activ = 0
        pre_activ = 0

        for i in range(len(self.layer_dims)-1):
            if i == 0:
                activ, pre_activ = self._forward_prop_step(x_batch, i+1)
            else:
                activ, pre_activ = self._forward_prop_step(activ, i+1)
            self._cache["A"+str(i+1)] = activ
            self._cache["Z"+str(i+1)] = pre_activ

    def _cross_entropy(self, y_pred, y_real):
        # Computes the cross-entropy loss of the model
        return np.sum(-(y_real*np.log(y_pred)+(1-y_real)*np.log(1-y_pred)))

    def _hinge(self, y_pred, y_real):

    def _hinge(self, y_pred, y_real):

    def _huber(self, y_pred, y_real):

    def _kull_leib_div(self, y_pred, y_real):

    def _mean_abs_err(self, y_pred, y_real):

    def _mean_sq_err(self, y_pred, y_real):

    def _compute_cost(self, y_batch):
        # Computes the cost of the model based on the chosen loss function
        y_pred = self._cache["A"+str(len(self.layer_dims)-1)]
        if self.cost_func = "Cross-entropy":
            return self._cross_entropy(y_pred, y_batch)
        elif self.cost_func = "Hinge":
            return self._hinge(y_pred, y_batch)
        elif self.cost_func = "Huber":
            return self._huber(y_pred, y_batch)
        elif self.cost_func = "KLDiv":
            return self._kull_leib_div(y_pred, y_batch)
        elif self.cost_func = "MAE":
            return self._mean_abs_err(y_pred, y_batch)
        elif self.cost_func = "MSE":
            return self._mean_sq_err(y_pred, y_batch)

    def _back_prop_step(self, ):

    def save_model(self):
        # HINT
        return None

    def load_model(self, filename):
        # HINT
        return None
