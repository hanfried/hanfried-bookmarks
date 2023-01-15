
# Table of Contents

1.  [Papers](#org9082165)
    1.  [Misc](#orgabe122c)
        1.  [What does it mean to understand a neural network? (Lillicrap, Kording: July 2019)](#org76a5742)
        2.  [Tabular Data: Deep Learning is Not All You Need (Shwartz-Ziv, Ravid, and Amitai Armon: November 2021)](#org3aec459)
        3.  [A ConvNet for the 2020s (Liu, Mao, Wu, Feichtenhofer, et al: March 2022)](#org8a2cd27)
        4.  [A Simple Framework for Contrastive Learning of Visual Representations (Chen, Kornblinth, Norouzi, Hinton: July 2020)](#org87c0f15)
        5.  [EfficientNet: Rethinking Model Scaling for Convolutional Neural Networks (Mingxing Tan, Quoc V. Le: Sep 2020)](#org30c7dd5)
        6.  [[[https://proceedings.neurips.cc/paper/2020/file/747e32ab0fea7fbd2ad9ec03daa3f840-Paper.pdf][Pushing the Limits of Narrow Precision Inferencing](#org6d334ad)
        7.  [AdderNet: Do We Really Need Multiplications in Deep Learning (Chen, Wang, Xu, et al: July 2021)](#orgc670e2e)
    2.  [NLP](#orga40174b)
        1.  [Pretrained Language Model Papers: https://github.com/thunlp/PLMpapers](#org9a3b9ae)
    3.  [Computer Vision](#orgf80d7a8)
        1.  [Fine-tuning CNN Image Retrievalwith No Human Annotation (Radenovic, Tolias, Chum: Jul 2018)](#org78245b1)
        2.  [Squeeze-and-Excitation Networks (Hu, Chen, Albanie, Sun, Wu: Mai 2019)](#orgc2a0d76)
        3.  [EfficientNet: Rethinking Model Scaling for Convolutional Neural Networks (Tan, Le: May/June 2019)](#org906b0dc)
        4.  [Natural Adversarial Examples (Hendrycks, Zhao, Basart, Steinhardt, Song: July 2019)](#org23e7d4a)
    4.  [NLP](#org6ef19ed)
        1.  [XLNet: Generalized Autoregressive Pretraining for Language Understanding (Yang, Dai, Yang, Carbonelle, Salakhutdinov, V. Le: June 2019)](#org988ded1)


<a id="org9082165"></a>

# Papers


<a id="orgabe122c"></a>

## Misc


<a id="org76a5742"></a>

### [What does it mean to understand a neural network?](http://arxiv.org/abs/1907.06374v1) (Lillicrap, Kording: July 2019)

Similar problems in neuro science to understanding artificial networks (easy to describe their
parts, but not what weights are and how they work together). But main advantage of artificial
networks is that we can inspect them and play around with them with ease, as we have at least
the whole information.


<a id="org3aec459"></a>

### [Tabular Data: Deep Learning is Not All You Need](https://arxiv.org/abs/2106.03253) (Shwartz-Ziv, Ravid, and Amitai Armon: November 2021)

-   Tree ensembles usually recommended for problems with tabular data
-   deep neural networks lack of
    -   locality
    -   missing values
    -   mixed feature types (numeric, ordinal, categorical),
    -   prior knowledge (no real transfer learning etc)
    -   black box approach
-   XGBoost generally outperforms the deep models
-   no deep model consistently outperforms the others
-   ensemble of deep models and XGBoost outperform the other models in most cases
-   training on datasets other than those in their original papers, the deep models performs worse the XGBoost
-   ensemble of classical models performed much worse than ensemble of deep networks and XGBoost
-   subset of models: only three models were needed to achieve almost optimal performance
-   XGBoost can be significantly faster then the deep networks (more than a magnitude)


<a id="org8a2cd27"></a>

### [A ConvNet for the 2020s](https://arxiv.org/pdf/2201.03545.pdf) (Liu, Mao, Wu, Feichtenhofer, et al: March 2022)

-   VGGNet, Inceptions, ResNeXt, DenseNet, MobileNet, EfficientNet, RegNet
    focused on different aspects of accuracy, efficiency and scalability and popularized many useful design principles
-   sliding window strategy intrinsic to visual processing
-   translation equivariance
-   computations shared
-   NLP took different path: Transformers replaced recurrent neural networks
-   converged in 2020: introduction of Vision Transformers
-   Transformers can outperform standard ResNets by significant margin
-   global attention design has quadratic complexity with respect to the input size
-   Hierarchical Transformers bridge this gap
-   Swin Transformes with a generic vision backbone and tasks beyond image classification
-   implementation can be expensive
-   ConvNets already satisfies many of those desired properties straightforward
-   key question: How do design deciisions in Transformers impact ConvNets&rsquo; performance?
    as result: propose a family of pure ConvNets -> ConvNeXt
-   compete favorably with Transformers in terms of accuracy, scalability and robustness across all major benchmarks
-   training exceeded to 300 epochs, AdamW optimizer, data augmentation techniques
    significant performance difference between traditional ConvNets and vision Transformes is due the training techniques
-   important design in every Transformer block is that it creates an inverted bottleneck
-   aspect of vision Transformers is non-local attention &#x2026; Swin Transformers reintroduced local window
-   Replacing ReLI with GELU
-   Fewer activation functions: use a single GELU activation in each block
-   Substitution Batch Normalization with Layer Normalization
-   ConvNeXt are simpler to fine tune at different resolutions as network is fully convolutional
    and there is no need to adjust the input patch size or interpolate absolute/relatve position biases


<a id="org87c0f15"></a>

### [A Simple Framework for Contrastive Learning of Visual Representations](https://arxiv.org/pdf/2002.05709.pdf) (Chen, Kornblinth, Norouzi, Hinton: July 2020)

-   shows that:
    1.  composition of data augmentation plays critical role in defining effictive predictive task
    2.  learning non-linear transformation between representation and contrastive loss substitantially improves quality of learned representations
    3.  contrastive learning benefits from larger batch sizer and more training steps compared to supervised learning
        considerably outperform previous methods for self-supervised and semi-supervised learning on ImageNet
-   Learning effective visual representation without human supervision is a long standing problems
    -   Generative approaches (learning to generate pixels): computationally expensive and may not be necessary for representation learning
    -   Discriminative approaches (learn representations similar to to supervised learnings): perform pretext taxt without labels
-   Framework:
    -   stochastic data augmentation: (no simple transformation suffices to learn good representations)
        -   **random cropping and resizing to original resolution**
        -   **random color distortion (very important to avoid color histogram learning)**
        -   Gaussian blur
    -   base encoder ~ ResNet
    -   small extra network as projection head representations -> space of contrastive loss (as a result the hidden representation for this mapping is a better representation)
    -   contrastive loss function
-   no extra negative sampling, other 2(N-1) augmented examples within a minibatch as negative example


<a id="org30c7dd5"></a>

### [EfficientNet: Rethinking Model Scaling for Convolutional Neural Networks](https://arxiv.org/pdf/1905.11946.pdf) (Mingxing Tan, Quoc V. Le: Sep 2020)

-   ConvNets commonly developed at a fixed ressource budget and then scaled up for better accuracy if more ressources are available
-   propose new scaling method that uniformly scales all dimensions of depth/width/resolution using a simple yet highly effective ****compound coefficient****
-   results in StateOfTheArt accuracy, but much smaller and faster
-   so far scaling up not well understood and most common way:
    -   **by depth:** can capture richer and more complex features and generalize well on new tasks, but difficult to train due gradient vanishing and accuracy diminishes
    -   **by width:** capture more fine grained features and easier to train, but don&rsquo;t capture will more higher level features, accuracy quickly saturates
    -   **by resolution:** improves accuracy, but diminishes for very high resolutions
    -   **arbitrary scaling:** requires tedious manual tuning and still often yields sub-optimal accuracy and efficiency
    -   **central question:** is there a principled method to scale up ConvNets
    -   **surprisingly:** such balance can be achieved by simply scaling each of them with constant ratio
    -   **develop:** new baseline Network and scale it up to obtain a family of models: EfficientNets
    -   **significantly outperform:** other ConvNets
-   **Observation 1:** Scaling up any dimension improves accuracy, but gain diminishes for bigger models
-   **Observation 2:** to pursue better accuracy and efficiency, it&rsquo;s critical to balance all dimensions of network during ConvNet scaling
-   **compound coefficient phi:** depth d = alpha **\* phi, width w = beta \*** phi, resolution r = gamma \*\* phi
-   **EfficientNet B0:** -   baseline network via a multi-objective neural architecture search optimizing accuracy ****and**** FLOPS
    -   alpha = 1.2, beta = 1.1, gamma = 1.15
-   **EfficientNets B1 to B7:** scaled up with different phi


<a id="org6d334ad"></a>

### [[<https://proceedings.neurips.cc/paper/2020/file/747e32ab0fea7fbd2ad9ec03daa3f840-Paper.pdf>][Pushing the Limits of Narrow Precision Inferencing

at Cloud Scale with Microsoft Floating Point]] (Microsoft: Dec 2020)

-   narrow fixed point datatypes incur a low hardware overhead, but lack a wide enough dynamic range
-   rising interest in custom datatypes specifically designed for DNN workloads
-   Microsoft Floating Point (MSFP) is a class of new datatypes for robust and low cost DNN inference at scale
    enables efficient realization of dot product
    maintaining a high dynamic range (2<sup>-126</sup> .. 2<sup>127</sup>)
-   MSFP relies on using a shared experiment among number of values (->bounding box)
-   similar to fixed-point, MSFP is affected by extreme outlier values
-   compromise between dynamic range of floating point and hardware efficiency of fixed point
-   dot product in MSFP consists of:
    -   1 fixed point addition of exponents,
    -   n fixed point multiplication of mantissas
    -   n n - 1 fixed point additions of mantissa products
-   in practice found a bounding box of 16-128 to be effective of preserving the accuracy while incurrnig a moderate hardware cost
    -   **simplest approach treat entire matrix a single bounding box:** can lead to severe accuracy loss due to outliers and need careful re-calibration per benchmark
    -   **bounding boxes to columns of matrix:** all dot products still be between pair of bounding boxes
    -   **more effective to split the composition into finer grainer regions:** that align with hardware tiles


<a id="orgc670e2e"></a>

### [AdderNet: Do We Really Need Multiplications in Deep Learning](https://arxiv.org/pdf/1912.13200.pdf) (Chen, Wang, Xu, et al: July 2021)

-   convolutions in deep neural networks are cross-correlations to measure the similarity
-   multiplications between float values
-   AdderNets to trade these massive multiplications for much cheaper additions to reduce computation costs
-   l1 norm distance (hardware friendly) between filters and input feature as output response
-   develop a special back propagation approach by investigating the full precision gradient
-   high power consumption of high end GPUs block modern deep learning system from being deployed to mobile devices
-   need many other hardware for support (memory chips, power circuits, voltage regulators, other controller chips)
-   necessary to study efficient deep neural networks that can run with affordable computation ressources on mobile devices
-   previously proposed
    -   **BNNs:** which binarized not only weights but also activations significantly reduces computation costs, but
        -   original recognition accuracy often can&rsquo;t be preserved
        -   not stable
        -   slower convergence speed
    -   **pruning based methods / knowledge distillation:** still contain massive multiplications
-   output of an adder filter is always negative -> need batch normalization (involves multiplications, but magnitudes less effort)
-   l1 norm adder filter has connection with template matching
-   derivative would be sgnSGD with discrete steps that almost never takes the (direct) direction if steepes descent
    (becomes even worse as dimensionality grows)
-   propose to use full precision gradient (instead of discrete one)
-   clip gradient to [-1, 1] -> HardTanh function HT(x) = x if -1 < x < 1 else 1 if x > 1 else -1
-   addition operation tends to bring much larger variations of outputs in AdderNets
-   propose adaptive learning for different layers in AdderNets
-   features tend to be clustered towards different class centers
-   AdderNets can well approximate performance of CNNs of same architecture (checked in the paper up to LeNet-5)


<a id="orga40174b"></a>

## NLP


<a id="org9a3b9ae"></a>

### Pretrained Language Model Papers: <https://github.com/thunlp/PLMpapers>


<a id="orgf80d7a8"></a>

## Computer Vision


<a id="org78245b1"></a>

### [Fine-tuning CNN Image Retrievalwith No Human Annotation](https://arxiv.org/pdf/1711.02512.pdf) (Radenovic, Tolias, Chum: Jul 2018)


<a id="orgc2a0d76"></a>

### [Squeeze-and-Excitation Networks](https://arxiv.org/pdf/1709.01507.pdf) (Hu, Chen, Albanie, Sun, Wu: Mai 2019)


<a id="org906b0dc"></a>

### [EfficientNet: Rethinking Model Scaling for Convolutional Neural Networks](https://arxiv.org/abs/1905.11946) (Tan, Le: May/June 2019)

-   Google Blog: <https://ai.googleblog.com/2019/05/efficientnet-improving-accuracy-and.html>
-   Source Code (Tensorflow): <https://github.com/tensorflow/tpu/tree/master/models/official/efficientnet>
-   Source Code (Keras): <https://github.com/qubvel/efficientnet>
-   Source Code (PyTorch): <https://github.com/lukemelas/EfficientNet-PyTorch>


<a id="org23e7d4a"></a>

### [Natural Adversarial Examples](http://arxiv.org/abs/1907.07174v2) (Hendrycks, Zhao, Basart, Steinhardt, Song: July 2019)

A big dataset with natural images that mislead completely imagenet pretrained models from
resnet, vgg to resnext and so. Emphasize that the models very often look not to the original
object, but to background, color and so.

The big dataset could be very helpful to train more robust models and also inspect for common
problems that could be tackled by data augmentation or better/other preprocessing.


<a id="org6ef19ed"></a>

## NLP


<a id="org988ded1"></a>

### [XLNet: Generalized Autoregressive Pretraining for Language Understanding](https://arxiv.org/abs/1906.08237v1) (Yang, Dai, Yang, Carbonelle, Salakhutdinov, V. Le: June 2019)

