.class Lcom/meizu/settings/calibration/EarphoneCalibrationFragment$3;
.super Ljava/lang/Object;
.source "EarphoneCalibrationFragment.java"

# interfaces
.implements Lcom/meizu/settings/utils/EarphonePlugedListenerHelper$OnEarphoneStateChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/calibration/EarphoneCalibrationFragment;->initEarphoneCalibrationHelper()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/calibration/EarphoneCalibrationFragment;


# direct methods
.method constructor <init>(Lcom/meizu/settings/calibration/EarphoneCalibrationFragment;)V
    .registers 2

    .line 173
    iput-object p1, p0, Lcom/meizu/settings/calibration/EarphoneCalibrationFragment$3;->this$0:Lcom/meizu/settings/calibration/EarphoneCalibrationFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEarphoneStateChanged(Z)V
    .registers 2

    if-nez p1, :cond_b

    .line 178
    iget-object p0, p0, Lcom/meizu/settings/calibration/EarphoneCalibrationFragment$3;->this$0:Lcom/meizu/settings/calibration/EarphoneCalibrationFragment;

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->onBackPressed()V

    :cond_b
    return-void
.end method
