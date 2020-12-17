.class Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager$1;
.super Ljava/lang/Object;
.source "StatusBarTouchableRegionManager.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;->updateTouchableRegionAfterLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;)V
    .registers 2

    .line 104
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager$1;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .registers 10

    .line 109
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager$1;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;->access$000(Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager$1;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;

    invoke-static {p2}, Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;->access$100(Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;)I

    move-result p2

    if-gt p1, p2, :cond_26

    .line 110
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager$1;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;->access$000(Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 111
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager$1;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;->access$202(Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;Z)Z

    .line 112
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager$1;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;->updateTouchableRegion()V

    :cond_26
    return-void
.end method
