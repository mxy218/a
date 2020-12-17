.class abstract Lcom/flyme/systemui/smarttouch/SmartTouchView$CallBackAnimationDrawable;
.super Landroid/graphics/drawable/AnimationDrawable;
.source "SmartTouchView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/systemui/smarttouch/SmartTouchView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "CallBackAnimationDrawable"
.end annotation


# instance fields
.field private nowFrame:I

.field final synthetic this$0:Lcom/flyme/systemui/smarttouch/SmartTouchView;


# direct methods
.method public constructor <init>(Lcom/flyme/systemui/smarttouch/SmartTouchView;)V
    .registers 3

    .line 206
    iput-object p1, p0, Lcom/flyme/systemui/smarttouch/SmartTouchView$CallBackAnimationDrawable;->this$0:Lcom/flyme/systemui/smarttouch/SmartTouchView;

    invoke-direct {p0}, Landroid/graphics/drawable/AnimationDrawable;-><init>()V

    .line 207
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x17

    if-lt p1, v0, :cond_f

    const/4 p1, 0x2

    .line 208
    iput p1, p0, Lcom/flyme/systemui/smarttouch/SmartTouchView$CallBackAnimationDrawable;->nowFrame:I

    goto :goto_12

    :cond_f
    const/4 p1, 0x1

    .line 210
    iput p1, p0, Lcom/flyme/systemui/smarttouch/SmartTouchView$CallBackAnimationDrawable;->nowFrame:I

    :goto_12
    return-void
.end method


# virtual methods
.method public abstract onFinished()V
.end method

.method public run()V
    .registers 4

    .line 216
    invoke-super {p0}, Landroid/graphics/drawable/AnimationDrawable;->run()V

    .line 217
    iget-object v0, p0, Lcom/flyme/systemui/smarttouch/SmartTouchView$CallBackAnimationDrawable;->this$0:Lcom/flyme/systemui/smarttouch/SmartTouchView;

    invoke-static {v0}, Lcom/flyme/systemui/smarttouch/SmartTouchView;->access$200(Lcom/flyme/systemui/smarttouch/SmartTouchView;)Ljava/util/LinkedList;

    move-result-object v1

    iget v2, p0, Lcom/flyme/systemui/smarttouch/SmartTouchView$CallBackAnimationDrawable;->nowFrame:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lcom/flyme/systemui/smarttouch/SmartTouchView;->access$302(Lcom/flyme/systemui/smarttouch/SmartTouchView;I)I

    .line 218
    iget v0, p0, Lcom/flyme/systemui/smarttouch/SmartTouchView$CallBackAnimationDrawable;->nowFrame:I

    invoke-virtual {p0}, Landroid/graphics/drawable/AnimationDrawable;->getNumberOfFrames()I

    move-result v1

    if-ge v0, v1, :cond_29

    .line 219
    iget v0, p0, Lcom/flyme/systemui/smarttouch/SmartTouchView$CallBackAnimationDrawable;->nowFrame:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/flyme/systemui/smarttouch/SmartTouchView$CallBackAnimationDrawable;->nowFrame:I

    goto :goto_2c

    .line 221
    :cond_29
    invoke-virtual {p0}, Lcom/flyme/systemui/smarttouch/SmartTouchView$CallBackAnimationDrawable;->onFinished()V

    :goto_2c
    return-void
.end method
