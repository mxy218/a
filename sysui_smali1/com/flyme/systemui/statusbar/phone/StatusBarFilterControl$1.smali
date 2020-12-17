.class Lcom/flyme/systemui/statusbar/phone/StatusBarFilterControl$1;
.super Ljava/lang/Object;
.source "StatusBarFilterControl.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/systemui/statusbar/phone/StatusBarFilterControl;->setFilterColor(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/systemui/statusbar/phone/StatusBarFilterControl;


# direct methods
.method constructor <init>(Lcom/flyme/systemui/statusbar/phone/StatusBarFilterControl;)V
    .registers 2

    .line 102
    iput-object p1, p0, Lcom/flyme/systemui/statusbar/phone/StatusBarFilterControl$1;->this$0:Lcom/flyme/systemui/statusbar/phone/StatusBarFilterControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 2

    .line 105
    invoke-static {p1}, Lcom/flyme/systemui/statusbar/utils/ColorAnimUtils;->getColor(Landroid/animation/ValueAnimator;)I

    move-result p1

    .line 106
    iget-object p0, p0, Lcom/flyme/systemui/statusbar/phone/StatusBarFilterControl$1;->this$0:Lcom/flyme/systemui/statusbar/phone/StatusBarFilterControl;

    invoke-static {p0, p1}, Lcom/flyme/systemui/statusbar/phone/StatusBarFilterControl;->access$000(Lcom/flyme/systemui/statusbar/phone/StatusBarFilterControl;I)V

    return-void
.end method
