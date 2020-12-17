.class Lcom/meizu/common/widget/SelectionButton$1;
.super Ljava/lang/Object;
.source "SelectionButton.java"

# interfaces
.implements Landroid/animation/TimeInterpolator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/common/widget/SelectionButton;->setupAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/common/widget/SelectionButton;


# direct methods
.method constructor <init>(Lcom/meizu/common/widget/SelectionButton;)V
    .registers 2

    .line 310
    iput-object p1, p0, Lcom/meizu/common/widget/SelectionButton$1;->this$0:Lcom/meizu/common/widget/SelectionButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .registers 3

    const/high16 v0, 0x41400000  # 12.0f

    mul-float/2addr p1, v0

    .line 314
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    .line 316
    iget-object p0, p0, Lcom/meizu/common/widget/SelectionButton$1;->this$0:Lcom/meizu/common/widget/SelectionButton;

    invoke-static {p0}, Lcom/meizu/common/widget/SelectionButton;->access$000(Lcom/meizu/common/widget/SelectionButton;)I

    move-result p0

    if-nez p0, :cond_14

    .line 317
    invoke-static {}, Lcom/meizu/common/widget/SelectionButton;->access$100()[F

    move-result-object p0

    goto :goto_18

    .line 319
    :cond_14
    invoke-static {}, Lcom/meizu/common/widget/SelectionButton;->access$200()[F

    move-result-object p0

    .line 320
    :goto_18
    aget p0, p0, p1

    return p0
.end method
