.class final Lcom/meizu/settings/widget/MzSeekBarVolumizer$Observer;
.super Landroid/database/ContentObserver;
.source "MzSeekBarVolumizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/widget/MzSeekBarVolumizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Observer"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/widget/MzSeekBarVolumizer;


# direct methods
.method public constructor <init>(Lcom/meizu/settings/widget/MzSeekBarVolumizer;Landroid/os/Handler;)V
    .registers 3

    .line 409
    iput-object p1, p0, Lcom/meizu/settings/widget/MzSeekBarVolumizer$Observer;->this$0:Lcom/meizu/settings/widget/MzSeekBarVolumizer;

    .line 410
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 2

    .line 415
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 416
    iget-object p0, p0, Lcom/meizu/settings/widget/MzSeekBarVolumizer$Observer;->this$0:Lcom/meizu/settings/widget/MzSeekBarVolumizer;

    invoke-static {p0}, Lcom/meizu/settings/widget/MzSeekBarVolumizer;->access$800(Lcom/meizu/settings/widget/MzSeekBarVolumizer;)V

    return-void
.end method
