.class Lcom/android/keyguard/KeyguardDisplayManager$1;
.super Ljava/lang/Object;
.source "KeyguardDisplayManager.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardDisplayManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardDisplayManager;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardDisplayManager;)V
    .registers 2

    .line 61
    iput-object p1, p0, Lcom/android/keyguard/KeyguardDisplayManager$1;->this$0:Lcom/android/keyguard/KeyguardDisplayManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisplayAdded(I)V
    .registers 5

    .line 65
    iget-object v0, p0, Lcom/android/keyguard/KeyguardDisplayManager$1;->this$0:Lcom/android/keyguard/KeyguardDisplayManager;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardDisplayManager;->access$000(Lcom/android/keyguard/KeyguardDisplayManager;)Landroid/hardware/display/DisplayManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    .line 66
    iget-object v1, p0, Lcom/android/keyguard/KeyguardDisplayManager$1;->this$0:Lcom/android/keyguard/KeyguardDisplayManager;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardDisplayManager;->access$100(Lcom/android/keyguard/KeyguardDisplayManager;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 67
    iget-object v1, p0, Lcom/android/keyguard/KeyguardDisplayManager$1;->this$0:Lcom/android/keyguard/KeyguardDisplayManager;

    const/4 v2, 0x0

    invoke-static {v1, p1, v2}, Lcom/android/keyguard/KeyguardDisplayManager;->access$200(Lcom/android/keyguard/KeyguardDisplayManager;IZ)V

    .line 68
    iget-object p0, p0, Lcom/android/keyguard/KeyguardDisplayManager$1;->this$0:Lcom/android/keyguard/KeyguardDisplayManager;

    invoke-static {p0, v0}, Lcom/android/keyguard/KeyguardDisplayManager;->access$300(Lcom/android/keyguard/KeyguardDisplayManager;Landroid/view/Display;)Z

    :cond_1d
    return-void
.end method

.method public onDisplayChanged(I)V
    .registers 4

    if-nez p1, :cond_3

    return-void

    .line 75
    :cond_3
    iget-object v0, p0, Lcom/android/keyguard/KeyguardDisplayManager$1;->this$0:Lcom/android/keyguard/KeyguardDisplayManager;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardDisplayManager;->access$000(Lcom/android/keyguard/KeyguardDisplayManager;)Landroid/hardware/display/DisplayManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    if-eqz v0, :cond_39

    .line 76
    iget-object v1, p0, Lcom/android/keyguard/KeyguardDisplayManager$1;->this$0:Lcom/android/keyguard/KeyguardDisplayManager;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardDisplayManager;->access$100(Lcom/android/keyguard/KeyguardDisplayManager;)Z

    move-result v1

    if-eqz v1, :cond_39

    .line 77
    iget-object v1, p0, Lcom/android/keyguard/KeyguardDisplayManager$1;->this$0:Lcom/android/keyguard/KeyguardDisplayManager;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardDisplayManager;->access$400(Lcom/android/keyguard/KeyguardDisplayManager;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Presentation;

    if-eqz v1, :cond_39

    .line 78
    invoke-virtual {v1}, Landroid/app/Presentation;->getDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_39

    .line 79
    iget-object v1, p0, Lcom/android/keyguard/KeyguardDisplayManager$1;->this$0:Lcom/android/keyguard/KeyguardDisplayManager;

    invoke-static {v1, p1}, Lcom/android/keyguard/KeyguardDisplayManager;->access$500(Lcom/android/keyguard/KeyguardDisplayManager;I)V

    .line 80
    iget-object p0, p0, Lcom/android/keyguard/KeyguardDisplayManager$1;->this$0:Lcom/android/keyguard/KeyguardDisplayManager;

    invoke-static {p0, v0}, Lcom/android/keyguard/KeyguardDisplayManager;->access$300(Lcom/android/keyguard/KeyguardDisplayManager;Landroid/view/Display;)Z

    :cond_39
    return-void
.end method

.method public onDisplayRemoved(I)V
    .registers 2

    .line 87
    iget-object p0, p0, Lcom/android/keyguard/KeyguardDisplayManager$1;->this$0:Lcom/android/keyguard/KeyguardDisplayManager;

    invoke-static {p0, p1}, Lcom/android/keyguard/KeyguardDisplayManager;->access$500(Lcom/android/keyguard/KeyguardDisplayManager;I)V

    return-void
.end method
