.class final Lcom/flyme/systemui/BatteryMeterDrawable$SettingObserver;
.super Landroid/database/ContentObserver;
.source "BatteryMeterDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/systemui/BatteryMeterDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SettingObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/systemui/BatteryMeterDrawable;


# direct methods
.method public constructor <init>(Lcom/flyme/systemui/BatteryMeterDrawable;)V
    .registers 2

    .line 543
    iput-object p1, p0, Lcom/flyme/systemui/BatteryMeterDrawable$SettingObserver;->this$0:Lcom/flyme/systemui/BatteryMeterDrawable;

    .line 544
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .registers 3

    .line 549
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 550
    iget-object p1, p0, Lcom/flyme/systemui/BatteryMeterDrawable$SettingObserver;->this$0:Lcom/flyme/systemui/BatteryMeterDrawable;

    invoke-static {p1}, Lcom/flyme/systemui/BatteryMeterDrawable;->access$000(Lcom/flyme/systemui/BatteryMeterDrawable;)V

    .line 551
    iget-object p0, p0, Lcom/flyme/systemui/BatteryMeterDrawable$SettingObserver;->this$0:Lcom/flyme/systemui/BatteryMeterDrawable;

    invoke-static {p0}, Lcom/flyme/systemui/BatteryMeterDrawable;->access$100(Lcom/flyme/systemui/BatteryMeterDrawable;)V

    return-void
.end method
