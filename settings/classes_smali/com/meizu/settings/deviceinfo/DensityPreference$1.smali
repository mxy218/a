.class Lcom/meizu/settings/deviceinfo/DensityPreference$1;
.super Ljava/lang/Object;
.source "DensityPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/deviceinfo/DensityPreference;->showDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/deviceinfo/DensityPreference;


# direct methods
.method constructor <init>(Lcom/meizu/settings/deviceinfo/DensityPreference;)V
    .registers 2

    .line 100
    iput-object p1, p0, Lcom/meizu/settings/deviceinfo/DensityPreference$1;->this$0:Lcom/meizu/settings/deviceinfo/DensityPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    .line 103
    :try_start_0
    iget-object p1, p0, Lcom/meizu/settings/deviceinfo/DensityPreference$1;->this$0:Lcom/meizu/settings/deviceinfo/DensityPreference;

    invoke-virtual {p1}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 104
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    .line 105
    iget-object p2, p0, Lcom/meizu/settings/deviceinfo/DensityPreference$1;->this$0:Lcom/meizu/settings/deviceinfo/DensityPreference;

    invoke-static {p2}, Lcom/meizu/settings/deviceinfo/DensityPreference;->access$000(Lcom/meizu/settings/deviceinfo/DensityPreference;)Landroid/widget/EditText;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    const/16 v0, 0x140

    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 106
    iget v0, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget p1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    mul-int/lit16 p1, p1, 0xa0

    .line 107
    div-int/2addr p1, p2

    const/16 p2, 0x78

    .line 108
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    const/4 p2, 0x0

    .line 109
    invoke-static {p2, p1}, Lcom/android/settingslib/display/DisplayDensityUtils;->setForcedDisplayDensity(II)V
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3b} :catch_3c

    goto :goto_44

    :catch_3c
    move-exception p1

    const-string p2, "DensityPreference"

    const-string v0, "Couldn\'t save density"

    .line 112
    invoke-static {p2, v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 115
    :goto_44
    iget-object p0, p0, Lcom/meizu/settings/deviceinfo/DensityPreference$1;->this$0:Lcom/meizu/settings/deviceinfo/DensityPreference;

    invoke-static {p0}, Lcom/meizu/settings/deviceinfo/DensityPreference;->access$100(Lcom/meizu/settings/deviceinfo/DensityPreference;)Landroid/content/Context;

    move-result-object p0

    const/4 p1, 0x1

    const-string p2, "density"

    invoke-static {p0, p2, p1}, Lcom/android/settingslib/Utils;->updateDisplayDeveloperModeNotificationValue(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method
