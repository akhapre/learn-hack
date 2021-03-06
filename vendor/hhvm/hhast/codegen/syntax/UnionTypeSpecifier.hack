/**
 * This file is generated. Do not modify it manually!
 *
 * @generated SignedSource<<a77db6f6aebc378288acc6bff076d7b0>>
 */
namespace Facebook\HHAST;
use namespace Facebook\TypeAssert;
use namespace HH\Lib\Dict;

<<__ConsistentConstruct>>
final class UnionTypeSpecifier extends Node implements ITypeSpecifier {

  const string SYNTAX_KIND = 'union_type_specifier';

  private ?Node $_left_paren;
  private ?Node $_types;
  private ?Node $_right_paren;

  public function __construct(
    ?Node $left_paren,
    ?Node $types,
    ?Node $right_paren,
    ?__Private\SourceRef $source_ref = null,
  ) {
    $this->_left_paren = $left_paren;
    $this->_types = $types;
    $this->_right_paren = $right_paren;
    parent::__construct($source_ref);
  }

  <<__Override>>
  public static function fromJSON(
    dict<arraykey, mixed> $json,
    string $file,
    int $initial_offset,
    string $source,
    string $_type_hint,
  ): this {
    $offset = $initial_offset;
    $left_paren = Node::fromJSON(
      ($json['union_left_paren'] ?? dict['kind' => 'missing']) as dict<_, _>,
      $file,
      $offset,
      $source,
      'Node',
    );
    $offset += $left_paren?->getWidth() ?? 0;
    $types = Node::fromJSON(
      ($json['union_types'] ?? dict['kind' => 'missing']) as dict<_, _>,
      $file,
      $offset,
      $source,
      'Node',
    );
    $offset += $types?->getWidth() ?? 0;
    $right_paren = Node::fromJSON(
      ($json['union_right_paren'] ?? dict['kind' => 'missing']) as dict<_, _>,
      $file,
      $offset,
      $source,
      'Node',
    );
    $offset += $right_paren?->getWidth() ?? 0;
    $source_ref = shape(
      'file' => $file,
      'source' => $source,
      'offset' => $initial_offset,
      'width' => $offset - $initial_offset,
    );
    return new static(
      /* HH_IGNORE_ERROR[4110] */ $left_paren,
      /* HH_IGNORE_ERROR[4110] */ $types,
      /* HH_IGNORE_ERROR[4110] */ $right_paren,
      $source_ref,
    );
  }

  <<__Override>>
  public function getChildren(): dict<string, Node> {
    return dict[
      'left_paren' => $this->_left_paren,
      'types' => $this->_types,
      'right_paren' => $this->_right_paren,
    ]
      |> Dict\filter_nulls($$);
  }

  <<__Override>>
  public function rewriteChildren<Tret as ?Node>(
    (function(Node, vec<Node>): Tret) $rewriter,
    vec<Node> $parents = vec[],
  ): this {
    $parents[] = $this;
    $left_paren = $this->_left_paren === null
      ? null
      : $rewriter($this->_left_paren, $parents);
    $types = $this->_types === null ? null : $rewriter($this->_types, $parents);
    $right_paren = $this->_right_paren === null
      ? null
      : $rewriter($this->_right_paren, $parents);
    if (
      $left_paren === $this->_left_paren &&
      $types === $this->_types &&
      $right_paren === $this->_right_paren
    ) {
      return $this;
    }
    return
      new static($left_paren as ?Node, $types as ?Node, $right_paren as ?Node);
  }

  public function getLeftParenUNTYPED(): ?Node {
    return $this->_left_paren;
  }

  public function withLeftParen(?Node $value): this {
    if ($value === $this->_left_paren) {
      return $this;
    }
    return new static($value, $this->_types, $this->_right_paren);
  }

  public function hasLeftParen(): bool {
    return $this->_left_paren !== null;
  }

  /**
   * @return unknown
   */
  public function getLeftParen(): ?Node {
    return $this->_left_paren;
  }

  /**
   * @return unknown
   */
  public function getLeftParenx(): Node {
    return TypeAssert\not_null($this->getLeftParen());
  }

  public function getTypesUNTYPED(): ?Node {
    return $this->_types;
  }

  public function withTypes(?Node $value): this {
    if ($value === $this->_types) {
      return $this;
    }
    return new static($this->_left_paren, $value, $this->_right_paren);
  }

  public function hasTypes(): bool {
    return $this->_types !== null;
  }

  /**
   * @return unknown
   */
  public function getTypes(): ?Node {
    return $this->_types;
  }

  /**
   * @return unknown
   */
  public function getTypesx(): Node {
    return TypeAssert\not_null($this->getTypes());
  }

  public function getRightParenUNTYPED(): ?Node {
    return $this->_right_paren;
  }

  public function withRightParen(?Node $value): this {
    if ($value === $this->_right_paren) {
      return $this;
    }
    return new static($this->_left_paren, $this->_types, $value);
  }

  public function hasRightParen(): bool {
    return $this->_right_paren !== null;
  }

  /**
   * @return unknown
   */
  public function getRightParen(): ?Node {
    return $this->_right_paren;
  }

  /**
   * @return unknown
   */
  public function getRightParenx(): Node {
    return TypeAssert\not_null($this->getRightParen());
  }
}
