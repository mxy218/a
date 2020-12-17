.class Lcom/meizu/settings/display/QcomDisplayWrapper$3;
.super Ljava/lang/Object;
.source "QcomDisplayWrapper.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/display/QcomDisplayWrapper;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/display/QcomDisplayWrapper;


# direct methods
.method constructor <init>(Lcom/meizu/settings/display/QcomDisplayWrapper;)V
    .registers 2

    .line 145
    iput-object p1, p0, Lcom/meizu/settings/display/QcomDisplayWrapper$3;->this$0:Lcom/meizu/settings/display/QcomDisplayWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 4

    .line 148
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 149
    iget-object v0, p0, Lcom/meizu/settings/display/QcomDisplayWrapper$3;->this$0:Lcom/meizu/settings/display/QcomDisplayWrapper;

    invoke-static {v0}, Lcom/meizu/settings/display/QcomDisplayWrapper;->access$200(Lcom/meizu/settings/display/QcomDisplayWrapper;)I

    move-result v0

    sub-int/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_1d

    .line 150
    iget-object p0, p0, Lcom/meizu/settings/display/QcomDisplayWrapper$3;->this$0:Lcom/meizu/settings/display/QcomDisplayWrapper;

    invoke-virtual {p0, p1}, Lcom/meizu/settings/display/QcomDisplayWrapper;->setEyeProtectLevel(I)Z

    :cond_1d
    return-void
.end method
