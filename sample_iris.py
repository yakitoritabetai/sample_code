from sklearn.datasets import load_iris
iris = load_iris()

print('irisデータセットの説明：', iris.DESCR)
print('irisデータセットの形状：', iris.data.shape)