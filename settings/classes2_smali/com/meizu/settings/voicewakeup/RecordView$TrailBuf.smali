.class Lcom/meizu/settings/voicewakeup/RecordView$TrailBuf;
.super Ljava/lang/Object;
.source "RecordView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/voicewakeup/RecordView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TrailBuf"
.end annotation


# instance fields
.field private buf:[F

.field private count:I

.field final synthetic this$0:Lcom/meizu/settings/voicewakeup/RecordView;


# direct methods
.method public constructor <init>(Lcom/meizu/settings/voicewakeup/RecordView;)V
    .registers 2

    .line 652
    iput-object p1, p0, Lcom/meizu/settings/voicewakeup/RecordView$TrailBuf;->this$0:Lcom/meizu/settings/voicewakeup/RecordView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 653
    iput p1, p0, Lcom/meizu/settings/voicewakeup/RecordView$TrailBuf;->count:I

    const/4 p1, 0x5

    new-array p1, p1, [F

    .line 654
    iput-object p1, p0, Lcom/meizu/settings/voicewakeup/RecordView$TrailBuf;->buf:[F

    return-void
.end method


# virtual methods
.method public getCur()F
    .registers 2

    .line 680
    iget-object v0, p0, Lcom/meizu/settings/voicewakeup/RecordView$TrailBuf;->buf:[F

    iget p0, p0, Lcom/meizu/settings/voicewakeup/RecordView$TrailBuf;->count:I

    aget p0, v0, p0

    return p0
.end method

.method public getFinal()F
    .registers 2

    .line 684
    iget-object p0, p0, Lcom/meizu/settings/voicewakeup/RecordView$TrailBuf;->buf:[F

    const/4 v0, 0x4

    aget p0, p0, v0

    return p0
.end method

.method public getNext()F
    .registers 3

    .line 672
    iget v0, p0, Lcom/meizu/settings/voicewakeup/RecordView$TrailBuf;->count:I

    const/4 v1, 0x4

    if-ge v0, v1, :cond_9

    add-int/lit8 v0, v0, 0x1

    .line 673
    iput v0, p0, Lcom/meizu/settings/voicewakeup/RecordView$TrailBuf;->count:I

    .line 676
    :cond_9
    iget-object v0, p0, Lcom/meizu/settings/voicewakeup/RecordView$TrailBuf;->buf:[F

    iget p0, p0, Lcom/meizu/settings/voicewakeup/RecordView$TrailBuf;->count:I

    aget p0, v0, p0

    return p0
.end method

.method public loadData(FF)F
    .registers 9

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-gez v1, :cond_6

    move p1, v0

    :cond_6
    sub-float v0, p1, p2

    const/high16 v1, 0x40a00000  # 5.0f

    div-float/2addr v0, v1

    const/4 v1, 0x0

    move v2, v1

    :goto_d
    const/4 v3, 0x4

    if-ge v2, v3, :cond_1d

    .line 663
    iget-object v3, p0, Lcom/meizu/settings/voicewakeup/RecordView$TrailBuf;->buf:[F

    add-int/lit8 v4, v2, 0x1

    int-to-float v5, v4

    mul-float/2addr v5, v0

    add-float/2addr v5, p2

    float-to-int v5, v5

    int-to-float v5, v5

    aput v5, v3, v2

    move v2, v4

    goto :goto_d

    .line 665
    :cond_1d
    iget-object p2, p0, Lcom/meizu/settings/voicewakeup/RecordView$TrailBuf;->buf:[F

    aput p1, p2, v3

    .line 666
    iput v1, p0, Lcom/meizu/settings/voicewakeup/RecordView$TrailBuf;->count:I

    .line 668
    aget p0, p2, v1

    return p0
.end method

.method public reset()V
    .registers 4

    const/4 v0, 0x0

    .line 692
    iput v0, p0, Lcom/meizu/settings/voicewakeup/RecordView$TrailBuf;->count:I

    :goto_3
    const/4 v1, 0x5

    if-ge v0, v1, :cond_e

    .line 694
    iget-object v1, p0, Lcom/meizu/settings/voicewakeup/RecordView$TrailBuf;->buf:[F

    const/4 v2, 0x0

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_e
    return-void
.end method
