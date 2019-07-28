import pip._internal;


def install_onnxruntime():
    supported_tags = pip._internal.pep425tags.get_supported()
    paths = glob.glob("*.whl")
    filepath = ""

    for supported_tag in supported_tags:
        for tag in supported_tag:
            if(tag.startswith("linux")):
                for path in paths:
                    if(tag in path):
                        filepath = path

    if(filepath == ""):
        raise Exception("No supported wheel file found in folder")
    else:
        subprocess.check_call("python3 -m pip install "+filepath, shell=True)

def main():

    print("Install ONNXRuntime")
    install_onnxruntime()
    print("ONNXRuntime installed")





if __name__ == '__main__':
    main()


~                                                                                                                                                                                                                             
~                                            