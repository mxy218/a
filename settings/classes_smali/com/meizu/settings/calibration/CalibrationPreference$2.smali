.class Lcom/meizu/settings/calibration/CalibrationPreference$2;
.super Ljava/lang/Object;
.source "CalibrationPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/calibration/CalibrationPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/calibration/CalibrationPreference;


# direct methods
.method constructor <init>(Lcom/meizu/settings/calibration/CalibrationPreference;)V
    .registers 2

    .line 42
    iput-object p1, p0, Lcom/meizu/settings/calibration/CalibrationPreference$2;->this$0:Lcom/meizu/settings/calibration/CalibrationPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 44
    iget-object p0, p0, Lcom/meizu/settings/calibration/CalibrationPreference$2;->this$0:Lcom/meizu/settings/calibration/CalibrationPreference;

    invoke-static {p0}, Lcom/meizu/settings/calibration/CalibrationPreference;->access$000(Lcom/meizu/settings/calibration/CalibrationPreference;)V

    return-void
.end method
