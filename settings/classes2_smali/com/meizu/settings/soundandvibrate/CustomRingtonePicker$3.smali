.class Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker$3;
.super Ljava/lang/Object;
.source "CustomRingtonePicker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker;


# direct methods
.method constructor <init>(Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker;)V
    .registers 2

    .line 366
    iput-object p1, p0, Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker$3;->this$0:Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 369
    new-instance v0, Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker$stopLocalMusicThread;

    iget-object p0, p0, Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker$3;->this$0:Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker$stopLocalMusicThread;-><init>(Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker;Z)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
