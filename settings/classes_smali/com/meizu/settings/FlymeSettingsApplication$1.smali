.class Lcom/meizu/settings/FlymeSettingsApplication$1;
.super Landroid/os/Handler;
.source "FlymeSettingsApplication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/FlymeSettingsApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/FlymeSettingsApplication;


# direct methods
.method constructor <init>(Lcom/meizu/settings/FlymeSettingsApplication;)V
    .registers 2

    .line 46
    iput-object p1, p0, Lcom/meizu/settings/FlymeSettingsApplication$1;->this$0:Lcom/meizu/settings/FlymeSettingsApplication;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 2

    .line 49
    iget-object p0, p0, Lcom/meizu/settings/FlymeSettingsApplication$1;->this$0:Lcom/meizu/settings/FlymeSettingsApplication;

    invoke-static {p0}, Lcom/meizu/settings/FlymeSettingsApplication;->access$000(Lcom/meizu/settings/FlymeSettingsApplication;)V

    return-void
.end method
