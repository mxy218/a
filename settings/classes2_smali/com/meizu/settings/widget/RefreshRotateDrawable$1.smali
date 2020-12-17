.class Lcom/meizu/settings/widget/RefreshRotateDrawable$1;
.super Ljava/lang/Object;
.source "RefreshRotateDrawable.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/widget/RefreshRotateDrawable;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/widget/RefreshRotateDrawable;


# direct methods
.method constructor <init>(Lcom/meizu/settings/widget/RefreshRotateDrawable;)V
    .registers 2

    .line 30
    iput-object p1, p0, Lcom/meizu/settings/widget/RefreshRotateDrawable$1;->this$0:Lcom/meizu/settings/widget/RefreshRotateDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 3

    .line 33
    iget-object v0, p0, Lcom/meizu/settings/widget/RefreshRotateDrawable$1;->this$0:Lcom/meizu/settings/widget/RefreshRotateDrawable;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v0, p1}, Lcom/meizu/settings/widget/RefreshRotateDrawable;->access$002(Lcom/meizu/settings/widget/RefreshRotateDrawable;I)I

    .line 34
    iget-object p0, p0, Lcom/meizu/settings/widget/RefreshRotateDrawable$1;->this$0:Lcom/meizu/settings/widget/RefreshRotateDrawable;

    invoke-static {p0}, Lcom/meizu/settings/widget/RefreshRotateDrawable;->access$000(Lcom/meizu/settings/widget/RefreshRotateDrawable;)I

    move-result p1

    mul-int/lit16 p1, p1, 0x2710

    div-int/lit16 p1, p1, 0x168

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/RotateDrawable;->setLevel(I)Z

    return-void
.end method
