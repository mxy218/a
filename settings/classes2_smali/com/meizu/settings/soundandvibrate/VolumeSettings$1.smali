.class Lcom/meizu/settings/soundandvibrate/VolumeSettings$1;
.super Ljava/lang/Object;
.source "VolumeSettings.java"

# interfaces
.implements Lcom/meizu/settings/MzSettingsActivity$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/soundandvibrate/VolumeSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/soundandvibrate/VolumeSettings;


# direct methods
.method constructor <init>(Lcom/meizu/settings/soundandvibrate/VolumeSettings;)V
    .registers 2

    .line 51
    iput-object p1, p0, Lcom/meizu/settings/soundandvibrate/VolumeSettings$1;->this$0:Lcom/meizu/settings/soundandvibrate/VolumeSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 3

    const/16 p0, 0x19

    if-eq p1, p0, :cond_b

    const/16 p0, 0x18

    if-ne p1, p0, :cond_9

    goto :goto_b

    :cond_9
    const/4 p0, 0x0

    return p0

    :cond_b
    :goto_b
    const/4 p0, 0x1

    return p0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 3

    const/16 p0, 0x19

    if-eq p1, p0, :cond_b

    const/16 p0, 0x18

    if-ne p1, p0, :cond_9

    goto :goto_b

    :cond_9
    const/4 p0, 0x0

    return p0

    :cond_b
    :goto_b
    const/4 p0, 0x1

    return p0
.end method
