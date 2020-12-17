.class Lcom/flyme/systemuitools/aod/view/AODDiskClock$FormatChangeObserver;
.super Landroid/database/ContentObserver;
.source "AODDiskClock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/systemuitools/aod/view/AODDiskClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FormatChangeObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/systemuitools/aod/view/AODDiskClock;


# direct methods
.method public constructor <init>(Lcom/flyme/systemuitools/aod/view/AODDiskClock;)V
    .registers 2

    .line 415
    iput-object p1, p0, Lcom/flyme/systemuitools/aod/view/AODDiskClock$FormatChangeObserver;->this$0:Lcom/flyme/systemuitools/aod/view/AODDiskClock;

    .line 416
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 2

    .line 421
    iget-object p0, p0, Lcom/flyme/systemuitools/aod/view/AODDiskClock$FormatChangeObserver;->this$0:Lcom/flyme/systemuitools/aod/view/AODDiskClock;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_f

    const-string p1, "kk:mm"

    goto :goto_11

    :cond_f
    const-string p1, "hh:mm"

    :goto_11
    invoke-static {p0, p1}, Lcom/flyme/systemuitools/aod/view/AODDiskClock;->access$002(Lcom/flyme/systemuitools/aod/view/AODDiskClock;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method
