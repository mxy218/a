.class Lcom/android/server/policy/PhoneWindowManager$6;
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

    .line 1636
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$6;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1639
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$6;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mEndCallKeyHandled:Z

    .line 1640
    const/4 v1, 0x0

    const-string v2, "End Call - Long Press - Show Global Actions"

    invoke-static {v0, v1, v1, v2}, Lcom/android/server/policy/PhoneWindowManager;->access$2200(Lcom/android/server/policy/PhoneWindowManager;IZLjava/lang/String;)Z

    .line 1642
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$6;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->showGlobalActionsInternal()V

    .line 1643
    return-void
.end method
