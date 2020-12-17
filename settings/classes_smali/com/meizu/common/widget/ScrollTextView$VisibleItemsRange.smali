.class Lcom/meizu/common/widget/ScrollTextView$VisibleItemsRange;
.super Ljava/lang/Object;
.source "ScrollTextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/common/widget/ScrollTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VisibleItemsRange"
.end annotation


# instance fields
.field private count:I

.field private first:I

.field final synthetic this$0:Lcom/meizu/common/widget/ScrollTextView;


# direct methods
.method public constructor <init>(Lcom/meizu/common/widget/ScrollTextView;)V
    .registers 3

    const/4 v0, 0x0

    .line 1348
    invoke-direct {p0, p1, v0, v0}, Lcom/meizu/common/widget/ScrollTextView$VisibleItemsRange;-><init>(Lcom/meizu/common/widget/ScrollTextView;II)V

    return-void
.end method

.method public constructor <init>(Lcom/meizu/common/widget/ScrollTextView;II)V
    .registers 4

    .line 1356
    iput-object p1, p0, Lcom/meizu/common/widget/ScrollTextView$VisibleItemsRange;->this$0:Lcom/meizu/common/widget/ScrollTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1357
    iput p2, p0, Lcom/meizu/common/widget/ScrollTextView$VisibleItemsRange;->first:I

    .line 1358
    iput p3, p0, Lcom/meizu/common/widget/ScrollTextView$VisibleItemsRange;->count:I

    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 1

    .line 1382
    iget p0, p0, Lcom/meizu/common/widget/ScrollTextView$VisibleItemsRange;->count:I

    return p0
.end method

.method public getFirst()I
    .registers 1

    .line 1366
    iget p0, p0, Lcom/meizu/common/widget/ScrollTextView$VisibleItemsRange;->first:I

    return p0
.end method

.method public getLast()I
    .registers 2

    .line 1374
    invoke-virtual {p0}, Lcom/meizu/common/widget/ScrollTextView$VisibleItemsRange;->getFirst()I

    move-result v0

    invoke-virtual {p0}, Lcom/meizu/common/widget/ScrollTextView$VisibleItemsRange;->getCount()I

    move-result p0

    add-int/2addr v0, p0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public update(II)Lcom/meizu/common/widget/ScrollTextView$VisibleItemsRange;
    .registers 3

    .line 1391
    iput p1, p0, Lcom/meizu/common/widget/ScrollTextView$VisibleItemsRange;->first:I

    .line 1392
    iput p2, p0, Lcom/meizu/common/widget/ScrollTextView$VisibleItemsRange;->count:I

    return-object p0
.end method
