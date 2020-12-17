.class Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewAdapter;
.super Ljava/lang/Object;
.source "ScrollTextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/common/widget/ScrollTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScrollTextViewAdapter"
.end annotation


# instance fields
.field private count:I

.field final synthetic this$0:Lcom/meizu/common/widget/ScrollTextView;

.field private validEnd:I

.field private validStart:I


# direct methods
.method public constructor <init>(Lcom/meizu/common/widget/ScrollTextView;)V
    .registers 5

    const/16 v0, 0xa

    const/4 v1, 0x0

    const/16 v2, 0x9

    .line 1417
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewAdapter;-><init>(Lcom/meizu/common/widget/ScrollTextView;III)V

    return-void
.end method

.method public constructor <init>(Lcom/meizu/common/widget/ScrollTextView;III)V
    .registers 5

    .line 1436
    iput-object p1, p0, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewAdapter;->this$0:Lcom/meizu/common/widget/ScrollTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 1407
    iput p1, p0, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewAdapter;->validStart:I

    .line 1409
    iput p1, p0, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewAdapter;->validEnd:I

    .line 1411
    iput p1, p0, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewAdapter;->count:I

    .line 1437
    invoke-virtual {p0, p2, p3, p4}, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewAdapter;->update(III)Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewAdapter;

    return-void
.end method


# virtual methods
.method public getItemText(I)Ljava/lang/String;
    .registers 3

    if-ltz p1, :cond_1b

    .line 1447
    invoke-virtual {p0}, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewAdapter;->getItemsCount()I

    move-result v0

    if-ge p1, v0, :cond_1b

    iget-object v0, p0, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewAdapter;->this$0:Lcom/meizu/common/widget/ScrollTextView;

    invoke-static {v0}, Lcom/meizu/common/widget/ScrollTextView;->access$900(Lcom/meizu/common/widget/ScrollTextView;)Lcom/meizu/common/widget/ScrollTextView$IDataAdapter;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 1448
    iget-object p0, p0, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewAdapter;->this$0:Lcom/meizu/common/widget/ScrollTextView;

    invoke-static {p0}, Lcom/meizu/common/widget/ScrollTextView;->access$900(Lcom/meizu/common/widget/ScrollTextView;)Lcom/meizu/common/widget/ScrollTextView$IDataAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/meizu/common/widget/ScrollTextView$IDataAdapter;->getItemText(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1b
    const/4 p0, 0x0

    return-object p0
.end method

.method public getItemsCount()I
    .registers 1

    .line 1459
    iget p0, p0, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewAdapter;->count:I

    return p0
.end method

.method public getValidEnd()I
    .registers 1

    .line 1475
    iget p0, p0, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewAdapter;->validEnd:I

    return p0
.end method

.method public getValidStart()I
    .registers 1

    .line 1471
    iget p0, p0, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewAdapter;->validStart:I

    return p0
.end method

.method public update(III)Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewAdapter;
    .registers 4

    .line 1463
    iput p2, p0, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewAdapter;->validStart:I

    .line 1464
    iput p3, p0, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewAdapter;->validEnd:I

    .line 1465
    iput p1, p0, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewAdapter;->count:I

    return-object p0
.end method
