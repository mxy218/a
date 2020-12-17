.class Lcom/flyme/systemui/BatteryMeterDrawable$1;
.super Ljava/lang/Object;
.source "BatteryMeterDrawable.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/systemui/BatteryMeterDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/systemui/BatteryMeterDrawable;


# direct methods
.method constructor <init>(Lcom/flyme/systemui/BatteryMeterDrawable;)V
    .registers 2

    .line 111
    iput-object p1, p0, Lcom/flyme/systemui/BatteryMeterDrawable$1;->this$0:Lcom/flyme/systemui/BatteryMeterDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 1

    .line 114
    iget-object p0, p0, Lcom/flyme/systemui/BatteryMeterDrawable$1;->this$0:Lcom/flyme/systemui/BatteryMeterDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method
