.class Lcom/meizu/settings/icclock/FlymeIccLockSettings$1;
.super Landroid/os/Handler;
.source "FlymeIccLockSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/icclock/FlymeIccLockSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/icclock/FlymeIccLockSettings;


# direct methods
.method constructor <init>(Lcom/meizu/settings/icclock/FlymeIccLockSettings;)V
    .registers 2

    .line 115
    iput-object p1, p0, Lcom/meizu/settings/icclock/FlymeIccLockSettings$1;->this$0:Lcom/meizu/settings/icclock/FlymeIccLockSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3

    .line 117
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_2c

    goto :goto_2b

    .line 125
    :pswitch_6  #0x66
    iget-object p0, p0, Lcom/meizu/settings/icclock/FlymeIccLockSettings$1;->this$0:Lcom/meizu/settings/icclock/FlymeIccLockSettings;

    invoke-static {p0}, Lcom/meizu/settings/icclock/FlymeIccLockSettings;->access$200(Lcom/meizu/settings/icclock/FlymeIccLockSettings;)V

    goto :goto_2b

    .line 122
    :pswitch_c  #0x65
    iget-object p0, p0, Lcom/meizu/settings/icclock/FlymeIccLockSettings$1;->this$0:Lcom/meizu/settings/icclock/FlymeIccLockSettings;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {p0, v0, p1}, Lcom/meizu/settings/icclock/FlymeIccLockSettings;->access$100(Lcom/meizu/settings/icclock/FlymeIccLockSettings;ZI)V

    goto :goto_2b

    .line 119
    :pswitch_1c  #0x64
    iget-object p0, p0, Lcom/meizu/settings/icclock/FlymeIccLockSettings$1;->this$0:Lcom/meizu/settings/icclock/FlymeIccLockSettings;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {p0, v0, p1}, Lcom/meizu/settings/icclock/FlymeIccLockSettings;->access$000(Lcom/meizu/settings/icclock/FlymeIccLockSettings;ZI)V

    :goto_2b
    return-void

    :pswitch_data_2c
    .packed-switch 0x64
        :pswitch_1c  #00000064
        :pswitch_c  #00000065
        :pswitch_6  #00000066
    .end packed-switch
.end method
