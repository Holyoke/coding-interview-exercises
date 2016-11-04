require 'main.rb'
require 'byebug'

describe "Two Stack Queues" do
  let!(:queue) { Queue.new }
  it "enqueues values" do
    queue.enqueue 1
    queue.enqueue 2
    queue.enqueue 3
    expect(queue.print).to eq "{1 <- 2 <- 3}"
  end

  it "dequeues values" do
    queue.enqueue 1
    queue.enqueue 2
    queue.enqueue 3
    expect(queue.dequeue).to eq 1
  end

  it "peeks values" do
    queue.enqueue 1
    queue.enqueue 2
    queue.enqueue 3
    expect(queue.peek).to eq 1
  end

  it "does sample input case" do
    queue.enqueue 42
    expect(queue.peek).to eq 42
    queue.dequeue
    queue.enqueue 14
    expect(queue.peek).to eq 14
    queue.enqueue 28
    expect(queue.print).to eq "{14 <- 28}"
    queue.enqueue 60
    expect(queue.print).to eq "{14 <- 28 <- 60}"
    queue.enqueue 78
    expect(queue.print).to eq "{14 <- 28 <- 60 <- 78}"
    queue.dequeue
    expect(queue.print).to eq "{28 <- 60 <- 78}"
    queue.dequeue
    expect(queue.print).to eq "{60 <- 78}"
  end
end
