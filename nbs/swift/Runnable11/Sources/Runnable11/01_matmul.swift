/*
THIS FILE WAS AUTOGENERATED! DO NOT EDIT!
file to edit: /home/clattner/fastai_docs/dev_swift/01_matmul.ipynb/lastPathComponent

*/
        
import Path
import TensorFlow


// S4TF doesn't provide the ability to read a file yet, but TensorFlow does, so 
// give StringTensor an initializer to do this.
public extension StringTensor {
    // Read a file into a Tensor.
    init(readFile filename: String) {
        self.init(readFile: StringTensor(filename))
    }
    init(readFile filename: StringTensor) {
        self = Raw.readFile(filename: filename)
    }

    // Decode a StringTensor holding a JPEG file into a Tensor<UInt8>.
    func decodeJpeg(channels: Int = 0) -> Tensor<UInt8> {
        return Raw.decodeJpeg(contents: self, channels: Int64(channels), dctMethod: "") 
    }
}
