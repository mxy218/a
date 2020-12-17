.class Lcom/meizu/settings/soundandvibrate/SystemSoundFragment$1;
.super Landroid/database/ContentObserver;
.source "SystemSoundFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/soundandvibrate/SystemSoundFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/soundandvibrate/SystemSoundFragment;


# direct methods
.method constructor <init>(Lcom/meizu/settings/soundandvibrate/SystemSoundFragment;Landroid/os/Handler;)V
    .registers 3

    .line 81
    iput-object p1, p0, Lcom/meizu/settings/soundandvibrate/SystemSoundFragment$1;->this$0:Lcom/meizu/settings/soundandvibrate/SystemSoundFragment;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .registers 3

    .line 85
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 86
    iget-object p0, p0, Lcom/meizu/settings/soundandvibrate/SystemSoundFragment$1;->this$0:Lcom/meizu/settings/soundandvibrate/SystemSoundFragment;

    invoke-static {p0, p2}, Lcom/meizu/settings/soundandvibrate/SystemSoundFragment;->access$000(Lcom/meizu/settings/soundandvibrate/SystemSoundFragment;Landroid/net/Uri;)V

    return-void
.end method
