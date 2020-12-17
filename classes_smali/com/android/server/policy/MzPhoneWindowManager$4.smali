.class Lcom/android/server/policy/MzPhoneWindowManager$4;
.super Landroid/database/ContentObserver;
.source "MzPhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/MzPhoneWindowManager;->registerSettingsObserver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/MzPhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/server/policy/MzPhoneWindowManager;Landroid/os/Handler;)V
    .registers 3
    .param p1, "this$0"  # Lcom/android/server/policy/MzPhoneWindowManager;
    .param p2, "x0"  # Landroid/os/Handler;

    .line 536
    iput-object p1, p0, Lcom/android/server/policy/MzPhoneWindowManager$4;->this$0:Lcom/android/server/policy/MzPhoneWindowManager;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 3
    .param p1, "selfChange"  # Z

    .line 539
    iget-object v0, p0, Lcom/android/server/policy/MzPhoneWindowManager$4;->this$0:Lcom/android/server/policy/MzPhoneWindowManager;

    invoke-static {v0}, Lcom/android/server/policy/MzPhoneWindowManager;->access$1200(Lcom/android/server/policy/MzPhoneWindowManager;)V

    .line 540
    return-void
.end method
