.class public Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker$RingtoneInfoWrap;
.super Ljava/lang/Object;
.source "CustomRingtonePicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RingtoneInfoWrap"
.end annotation


# instance fields
.field displayNameToPinyin:Ljava/lang/String;

.field info:Landroid/media/MzRingtoneManager$RingtoneInfo;

.field final synthetic this$0:Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker;


# direct methods
.method public constructor <init>(Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker;)V
    .registers 2

    .line 85
    iput-object p1, p0, Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker$RingtoneInfoWrap;->this$0:Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
