.class Lcom/android/server/policy/PhoneWindowManager$7;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/PhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/server/policy/PhoneWindowManager;)V
    .registers 2

    .line 1661
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$7;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1664
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$7;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->access$2600(Lcom/android/server/policy/PhoneWindowManager;Z)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1665
    return-void

    .line 1668
    :cond_a
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$7;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$7;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {v2}, Lcom/android/server/policy/PhoneWindowManager;->access$2700(Lcom/android/server/policy/PhoneWindowManager;)I

    move-result v2

    invoke-static {v0, v2}, Lorg/lineageos/internal/util/ActionUtils;->killForegroundApp(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 1669
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$7;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    const-string v2, "Back - Long Press"

    invoke-static {v0, v1, v1, v2}, Lcom/android/server/policy/PhoneWindowManager;->access$2200(Lcom/android/server/policy/PhoneWindowManager;IZLjava/lang/String;)Z

    .line 1671
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$7;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const v2, 0x3f09000a

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 1673
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1675
    :cond_2f
    return-void
.end method
