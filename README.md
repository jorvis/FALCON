# community-prok-pipeline
Community-developed prokaryotic annotation pipeline

## Getting Started

These instructions describe how to get the annotation pipeline running on your machine.

### Prerequisities

The pipeline and tools are represented using [Common Workflow Language (CWL)](http://www.commonwl.org/), with all dependent tools contained within Docker images.  These two things are the only prerequisites, and are easily installed.  

#### Install [Docker](https://www.docker.com/)

```
$ sudo apt-get install docker-engine
[restart]
```

#### Install CWL

```
$ pip install cwl-runner
```

### Get the pipeline

Now that you have the dependencies to run things, you need only the actual pipeline/tool CWL definitions.

```
$ git clone https://github.com/jorvis/community-prok-pipeline.git
```

### Running

```
$ cd community-prok-pipeline/cwl/workflows/
```

Here you'll find the [prok_annotation.json](https://github.com/jorvis/community-prok-pipeline/blob/master/cwl/workflows/prok_annotation.json) file.  Within this, you'll want to change the source_fasta.path setting and, optionally, the rapsearch2_threads and hmmscan_threads settings.

Then, you can run it like this:

```
$ ./prok_annotation.cwl prok_annotation.json
```

Once completed, the annotated GFF file will be called 'attributor.annnotation.gff3' (unless you've changed the attributor_output_base setting in the json config file.)

## Authors

See the list of [contributors](https://github.com/jorvis/community-prok-pipeline/contributors) who participated in this project.

## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details

