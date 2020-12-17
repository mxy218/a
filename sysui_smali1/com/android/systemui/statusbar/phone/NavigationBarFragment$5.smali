.class Lcom/android/systemui/statusbar/phone/NavigationBarFragment$5;
.super Ljava/lang/Object;
.source "NavigationBarFragment.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/NavigationBarFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/NavigationBarFragment;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;)V
    .registers 2

    .line 1263
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment$5;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisplayAdded(I)V
    .registers 2

    return-void
.end method

.method public onDisplayChanged(I)V
    .registers 6

    .line 1276
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment$5;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    iget v1, v0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mDisplayId:I

    if-ne p1, v1, :cond_3f

    .line 1277
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->access$900(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;)Landroid/hardware/display/DisplayManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getState()I

    move-result v0

    .line 1278
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDisplayChanged displayId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",state ="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "NavigationBar"

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1279
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment$5;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    const/4 v2, 0x2

    if-ne v0, v2, :cond_37

    const/4 v1, 0x1

    :cond_37
    invoke-static {p1, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->access$1002(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;Z)Z

    .line 1280
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment$5;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->updateHomeChipEnableIfNeed()V

    :cond_3f
    return-void
.end method

.method public onDisplayRemoved(I)V
    .registers 2

    return-void
.end method
