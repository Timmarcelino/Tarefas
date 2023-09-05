=begin
Árvore Geradora Mínima.
Este código inclui a implementação completa dos algoritmos de Kruskal e Prim,
bem como a seleção automática com base na densidade do grafo.
Basta criar uma instância da classe Graph, adicionar arestas e chamar o método
minimum_spanning_tree para obter a Árvore Geradora Mínima.
O código irá escolher automaticamente entre Kruskal e Prim com base na densidade
do grafo.
=end

class Graph
  attr_reader :vertices, :edges

  def initialize(vertices)
    @vertices = vertices
    @edges = []
  end

  def add_edge(u, v, w)
    @edges << [u, v, w]
  end

  def density
    num_edges = @edges.length
    max_edges = @vertices * (@vertices - 1) / 2
    num_edges.to_f / max_edges
  end

  def minimum_spanning_tree
    if density > 0.5
      puts "Usando Kruskal para um grafo denso"
      kruskal_mst
    else
      puts "Usando Prim para um grafo esparso"
      prim_mst
    end
  end

  def kruskal_mst
    result = []
    sorted_edges = @edges.sort_by { |edge| edge[2] } # Ordena as arestas pelo peso

    parent = Array.new(@vertices) { |v| v }

    sorted_edges.each do |edge|
      u, v, w = edge

      root_u = find(parent, u)
      root_v = find(parent, v)

      if root_u != root_v
        result << edge
        union(parent, root_u, root_v)
      end
    end

    result
  end

  def prim_mst
    result = []
    selected = Array.new(@vertices, false)
    selected[0] = true

    (@vertices - 1).times do
      min_edge = nil

      @edges.each do |edge|
        u, v, w = edge

        if selected[u] ^ selected[v]
          if min_edge.nil? || w < min_edge[2]
            min_edge = edge
          end
        end
      end

      result << min_edge
      selected[min_edge[0]] = true
      selected[min_edge[1]] = true
    end

    result
  end

  private

  def find(parent, node)
    if parent[node] != node
      parent[node] = find(parent, parent[node])
    end
    parent[node]
  end

  def union(parent, x, y)
    root_x = find(parent, x)
    root_y = find(parent, y)
    parent[root_x] = root_y
  end
end

# Exemplo de uso:
graph = Graph.new(4)
graph.add_edge(0, 1, 10)
graph.add_edge(0, 2, 6)
graph.add_edge(0, 3, 5)
graph.add_edge(1, 3, 15)
graph.add_edge(2, 3, 4)

minimum_spanning_tree = graph.minimum_spanning_tree
minimum_spanning_tree.each { |edge| puts "#{edge[0]} - #{edge[1]} : #{edge[2]}" }
