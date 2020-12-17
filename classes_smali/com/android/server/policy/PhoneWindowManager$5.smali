.class Lcom/android/server/policy/PhoneWindowManager$5;
.super Landroid/service/vr/IPersistentVrStateCallbacks$Stub;
.source "PhoneWindowManager.java"


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
    .param p1, "this$0"  # Lcom/android/server/policy/PhoneWindowManager;

    .line 849
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$5;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-direct {p0}, Landroid/service/vr/IPersistentVrStateCallbacks$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onPersistentVrStateChanged(Z)V
    .registers 3
    .param p1, "enabled"  # Z

    .line 852
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$5;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/DisplayPolicy;->setPersistentVrModeEnabled(Z)V

    .line 853
    return-void
.end method
