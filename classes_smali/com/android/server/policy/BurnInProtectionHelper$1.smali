.class Lcom/android/server/policy/BurnInProtectionHelper$1;
.super Landroid/content/BroadcastReceiver;
.source "BurnInProtectionHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/BurnInProtectionHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/BurnInProtectionHelper;


# direct methods
.method constructor <init>(Lcom/android/server/policy/BurnInProtectionHelper;)V
    .registers 2

    .line 86
    iput-object p1, p0, Lcom/android/server/policy/BurnInProtectionHelper$1;->this$0:Lcom/android/server/policy/BurnInProtectionHelper;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    .line 92
    iget-object p1, p0, Lcom/android/server/policy/BurnInProtectionHelper$1;->this$0:Lcom/android/server/policy/BurnInProtectionHelper;

    invoke-static {p1}, Lcom/android/server/policy/BurnInProtectionHelper;->access$000(Lcom/android/server/policy/BurnInProtectionHelper;)V

    .line 93
    return-void
.end method
