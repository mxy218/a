.class public Lcom/flyme/systemui/statusbar/phone/MarqueeTextView;
.super Landroid/widget/TextView;
.source "MarqueeTextView.java"


# instance fields
.field private mCurrentScrollInterval:I

.field private mCurrentScrollPosition:I

.field private mHandler:Landroid/os/Handler;

.field private mIsMeasured:Z

.field private mIsScrolling:Z

.field private mMyHandler:Landroid/os/Handler;

.field private mMyThread:Landroid/os/HandlerThread;

.field private mScrollTickerRunnable:Ljava/lang/Runnable;

.field public mSegment:Lcom/flyme/systemui/statusbar/phone/MarqueeTicker$Segment;

.field private mTextViewWidth:I

.field private mTextWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 74
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 51
    iput-boolean p1, p0, Lcom/flyme/systemui/statusbar/phone/MarqueeTextView;->mIsScrolling:Z

    .line 55
    iput-boolean p1, p0, Lcom/flyme/systemui/statusbar/phone/MarqueeTextView;->mIsMeasured:Z

    .line 63
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/flyme/systemui/statusbar/phone/MarqueeTextView;->mHandler:Landroid/os/Handler;

    const/4 p1, 0x0

    .line 67
    iput-object p1, p0, Lcom/flyme/systemui/statusbar/phone/MarqueeTextView;->mMyThread:Landroid/os/HandlerThread;

    .line 71
    iput-object p1, p0, Lcom/flyme/systemui/statusbar/phone/MarqueeTextView;->mMyHandler:Landroid/os/Handler;

    .line 144
    new-instance p1, Lcom/flyme/systemui/statusbar/phone/MarqueeTextView$1;

    invoke-direct {p1, p0}, Lcom/flyme/systemui/statusbar/phone/MarqueeTextView$1;-><init>(Lcom/flyme/systemui/statusbar/phone/MarqueeTextView;)V

    iput-object p1, p0, Lcom/flyme/systemui/statusbar/phone/MarqueeTextView;->mScrollTickerRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 78
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 51
    iput-boolean p1, p0, Lcom/flyme/systemui/statusbar/phone/MarqueeTextView;->mIsScrolling:Z

    .line 55
    iput-boolean p1, p0, Lcom/flyme/systemui/statusbar/phone/MarqueeTextView;->mIsMeasured:Z

    .line 63
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/flyme/systemui/statusbar/phone/MarqueeTextView;->mHandler:Landroid/os/Handler;

    const/4 p1, 0x0

    .line 67
    iput-object p1, p0, Lcom/flyme/systemui/statusbar/phone/MarqueeTextView;->mMyThread:Landroid/os/HandlerThread;

    .line 71
    iput-object p1, p0, Lcom/flyme/systemui/statusbar/phone/MarqueeTextView;->mMyHandler:Landroid/os/Handler;

    .line 144
    new-instance p1, Lcom/flyme/systemui/statusbar/phone/MarqueeTextView$1;

    invoke-direct {p1, p0}, Lcom/flyme/systemui/statusbar/phone/MarqueeTextView$1;-><init>(Lcom/flyme/systemui/statusbar/phone/MarqueeTextView;)V

    iput-object p1, p0, Lcom/flyme/systemui/statusbar/phone/MarqueeTextView;->mScrollTickerRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 82
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 51
    iput-boolean p1, p0, Lcom/flyme/systemui/statusbar/phone/MarqueeTextView;->mIsScrolling:Z

    .line 55
    iput-boolean p1, p0, Lcom/flyme/systemui/statusbar/phone/MarqueeTextView;->mIsMeasured:Z

    .line 63
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/flyme/systemui/statusbar/phone/MarqueeTextView;->mHandler:Landroid/os/Handler;

    const/4 p1, 0x0

    .line 67
    iput-object p1, p0, Lcom/flyme/systemui/statusbar/phone/MarqueeTextView;->mMyThread:Landroid/os/HandlerThread;

    .line 71
    iput-object p1, p0, Lcom/flyme/systemui/statusbar/phone/MarqueeTextView;->mMyHandler:Landroid/os/Handler;

    .line 144
    new-instance p1, Lcom/flyme/systemui/statusbar/phone/MarqueeTextView$1;

    invoke-direct {p1, p0}, Lcom/flyme/systemui/statusbar/phone/MarqueeTextView$1;-><init>(Lcom/flyme/systemui/statusbar/phone/MarqueeTextView;)V

    iput-object p1, p0, Lcom/flyme/systemui/statusbar/phone/MarqueeTextView;->mScrollTickerRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/flyme/systemui/statusbar/phone/MarqueeTextView;)I
    .registers 1

    .line 15
    iget p0, p0, Lcom/flyme/systemui/statusbar/phone/MarqueeTextView;->mTextWidth:I

    return p0
.end method

.method static synthetic access$100(Lcom/flyme/systemui/statusbar/phone/MarqueeTextView;)I
    .registers 1

    .line 15
    iget p0, p0, Lcom/flyme/systemui/statusbar/phone/MarqueeTextView;->mTextViewWidth:I

    return p0
.end method

.method static synthetic access$200(Lcom/flyme/systemui/statusbar/phone/MarqueeTextView;)V
    .registers 1

    .line 15
    invoke-direct {p0}, Lcom/flyme/systemui/statusbar/phone/MarqueeTextView;->getTextWidth()V

    return-void
.end method

.method static synthetic access$300(Lcom/flyme/systemui/statusbar/phone/MarqueeTextView;)Z
    .registers 1

    .line 15
    iget-boolean p0, p0, Lcom/flyme/systemui/statusbar/phone/MarqueeTextView;->mIsScrolling:Z

    return p0
.end method

.method static synthetic access$302(Lcom/flyme/systemui/statusbar/phone/MarqueeTextView;Z)Z
    .registers 2

    .line 15
    iput-boolean p1, p0, Lcom/flyme/systemui/statusbar/phone/MarqueeTextView;->mIsScrolling:Z

    return p1
.end method

.method static synthetic access$400(Lcom/flyme/systemui/statusbar/phone/MarqueeTextView;)I
    .registers 1

    .line 15
    iget p0, p0, Lcom/flyme/systemui/statusbar/phone/MarqueeTextView;->mCurrentScrollInterval:I

    return p0
.end method

.method static synthetic access$402(Lcom/flyme/systemui/statusbar/phone/MarqueeTextView;I)I
    .registers 2

    .line 15
    iput p1, p0, Lcom/flyme/systemui/statusbar/phone/MarqueeTextView;->mCurrentScrollInterval:I

    return p1
.end method

.method static synthetic access$500(Lcom/flyme/systemui/statusbar/phone/MarqueeTextView;)I
    .registers 1

    .line 15
    iget p0, p0, Lcom/flyme/systemui/statusbar/phone/MarqueeTextView;->mCurrentScrollPosition:I

    return p0
.end method

.method static synthetic access$512(Lcom/flyme/systemui/statusbar/phone/MarqueeTextView;I)I
    .registers 3

    .line 15
    iget v0, p0, Lcom/flyme/systemui/statusbar/phone/MarqueeTextView;->mCurrentScrollPosition:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/flyme/systemui/statusbar/phone/MarqueeTextView;->mCurrentScrollPosition:I

    return v0
.end method

.method static synthetic access$600(Lcom/flyme/systemui/statusbar/phone/MarqueeTextView;)Landroid/os/Handler;
    .registers 1

    .line 15
    iget-object p0, p0, Lcom/flyme/systemui/statusbar/phone/MarqueeTextView;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$700(Lcom/flyme/systemui/statusbar/phone/MarqueeTextView;)Landroid/os/Handler;
    .registers 1

    .line 15
    iget-object p0, p0, Lcom/flyme/systemui/statusbar/phone/MarqueeTextView;->mMyHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$800(Lcom/flyme/systemui/statusbar/phone/MarqueeTextView;)Ljava/lang/Runnable;
    .registers 1

    .line 15
    iget-object p0, p0, Lcom/flyme/systemui/statusbar/phone/MarqueeTextView;->mScrollTickerRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method private getTextWidth()V
    .registers 3

    .line 125
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    .line 126
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 127
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/flyme/systemui/statusbar/phone/MarqueeTextView;->mTextWidth:I

    .line 128
    invoke-virtual {p0}, Landroid/widget/TextView;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/flyme/systemui/statusbar/phone/MarqueeTextView;->mTextViewWidth:I

    return-void
.end method


# virtual methods
.method public isFocused()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public isRunning()Z
    .registers 1

    .line 248
    iget-boolean p0, p0, Lcom/flyme/systemui/statusbar/phone/MarqueeTextView;->mIsScrolling:Z

    return p0
.end method

.method protected onAttachedToWindow()V
    .registers 3

    .line 252
    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    .line 253
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/phone/MarqueeTextView;->mMyThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_15

    .line 254
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "MyThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/flyme/systemui/statusbar/phone/MarqueeTextView;->mMyThread:Landroid/os/HandlerThread;

    .line 255
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/phone/MarqueeTextView;->mMyThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 257
    :cond_15
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/phone/MarqueeTextView;->mMyHandler:Landroid/os/Handler;

    if-nez v0, :cond_26

    .line 258
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/flyme/systemui/statusbar/phone/MarqueeTextView;->mMyThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/flyme/systemui/statusbar/phone/MarqueeTextView;->mMyHandler:Landroid/os/Handler;

    :cond_26
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    .line 264
    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    .line 265
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/phone/MarqueeTextView;->mMyThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    const/4 v0, 0x0

    .line 266
    iput-object v0, p0, Lcom/flyme/systemui/statusbar/phone/MarqueeTextView;->mMyHandler:Landroid/os/Handler;

    .line 267
    iput-object v0, p0, Lcom/flyme/systemui/statusbar/phone/MarqueeTextView;->mMyThread:Landroid/os/HandlerThread;

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 2

    .line 89
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 93
    iget-boolean p1, p0, Lcom/flyme/systemui/statusbar/phone/MarqueeTextView;->mIsMeasured:Z

    if-nez p1, :cond_d

    .line 94
    invoke-direct {p0}, Lcom/flyme/systemui/statusbar/phone/MarqueeTextView;->getTextWidth()V

    const/4 p1, 0x1

    .line 95
    iput-boolean p1, p0, Lcom/flyme/systemui/statusbar/phone/MarqueeTextView;->mIsMeasured:Z

    :cond_d
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .registers 3

    .line 136
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    const/4 p1, 0x0

    .line 137
    iput-boolean p1, p0, Lcom/flyme/systemui/statusbar/phone/MarqueeTextView;->mIsMeasured:Z

    .line 138
    invoke-direct {p0}, Lcom/flyme/systemui/statusbar/phone/MarqueeTextView;->getTextWidth()V

    const/4 p1, 0x0

    .line 139
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    const/4 p1, 0x1

    .line 140
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setHorizontalFadingEdgeEnabled(Z)V

    return-void
.end method

.method public startScrollSoon()V
    .registers 4

    const/4 v0, 0x0

    .line 233
    iput v0, p0, Lcom/flyme/systemui/statusbar/phone/MarqueeTextView;->mCurrentScrollPosition:I

    const/4 v0, 0x1

    .line 234
    iput-boolean v0, p0, Lcom/flyme/systemui/statusbar/phone/MarqueeTextView;->mIsScrolling:Z

    .line 236
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/phone/MarqueeTextView;->mMyHandler:Landroid/os/Handler;

    if-eqz v0, :cond_18

    .line 237
    iget-object v1, p0, Lcom/flyme/systemui/statusbar/phone/MarqueeTextView;->mScrollTickerRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 238
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/phone/MarqueeTextView;->mMyHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/flyme/systemui/statusbar/phone/MarqueeTextView;->mScrollTickerRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x5dc

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_18
    return-void
.end method
