.class public Lcom/meizu/settings/utils/MzUtils;
.super Ljava/lang/Object;
.source "MzUtils.java"


# static fields
.field private static MZ_CURRENT_POWER_MODE:Ljava/lang/String; = "mz_current_power_mode"

.field private static final NOTIFICATION_SERVICE_APP_NEED_HIDE:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-string v0, "com.meizu.battery/com.meizu.power.apps.appnotification.PermanentNotificationService"

    const-string v1, "com.meizu.flyme.xtemui/com.meizu.flyme.xtemui.glint.service.GlintNotificationService"

    const-string v2, "com.meizu.flyme.xtemui/com.meizu.flyme.xtemui.cameramirror.service.CameraAccessibilityService"

    .line 105
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/meizu/settings/utils/MzUtils;->NOTIFICATION_SERVICE_APP_NEED_HIDE:[Ljava/lang/String;

    return-void
.end method

.method private static bidiWrap(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 1113
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget-object p0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 1114
    invoke-static {p0}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_1a

    .line 1115
    invoke-static {v0}, Landroid/text/BidiFormatter;->getInstance(Z)Landroid/text/BidiFormatter;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1a
    return-object p1
.end method

.method public static bitmapToByteArray(Landroid/graphics/Bitmap;)[B
    .registers 4

    .line 894
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 895
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {p0, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 897
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method public static checkProductModel(Ljava/lang/String;)Z
    .registers 2

    const-string v0, "ro.vendor.product.flyme.model"

    .line 1529
    invoke-static {v0}, Lcom/meizu/settings/utils/MzUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    const-string v0, "ro.product.flyme.model"

    .line 1530
    invoke-static {v0}, Lcom/meizu/settings/utils/MzUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_19

    goto :goto_1b

    :cond_19
    const/4 p0, 0x0

    goto :goto_1c

    :cond_1b
    :goto_1b
    const/4 p0, 0x1

    :goto_1c
    return p0
.end method

.method public static clearDevelopmentValue(Landroid/content/Context;)V
    .registers 3

    const-string v0, "density"

    .line 1469
    invoke-static {p0, v0}, Lcom/meizu/settings/utils/MzUtils;->restorePreference(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x0

    .line 1471
    :try_start_9
    invoke-static {v0}, Lcom/android/settingslib/display/DisplayDensityUtils;->clearForcedDisplayDensity(I)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_c} :catch_c

    .line 1475
    :catch_c
    :cond_c
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "display_developer_mode_notification"

    const-string v1, ""

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public static compareVersion(Ljava/lang/String;Ljava/lang/String;)I
    .registers 8

    .line 1389
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    :cond_8
    const-string v0, "\\."

    .line 1392
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 1393
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 1394
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "version1Array=="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, p0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "test"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1395
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "version2Array=="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1397
    array-length v0, p0

    array-length v2, p1

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    move v2, v1

    move v3, v2

    :goto_46
    if-ge v2, v0, :cond_5a

    .line 1399
    aget-object v3, p0, v2

    .line 1400
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aget-object v4, p1, v2

    .line 1401
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    sub-int/2addr v3, v4

    if-nez v3, :cond_5a

    add-int/lit8 v2, v2, 0x1

    goto :goto_46

    :cond_5a
    const/4 v0, -0x1

    const/4 v4, 0x1

    if-nez v3, :cond_7e

    move v3, v2

    .line 1405
    :goto_5f
    array-length v5, p0

    if-ge v3, v5, :cond_6e

    .line 1406
    aget-object v5, p0, v3

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    if-lez v5, :cond_6b

    return v4

    :cond_6b
    add-int/lit8 v3, v3, 0x1

    goto :goto_5f

    .line 1411
    :cond_6e
    :goto_6e
    array-length p0, p1

    if-ge v2, p0, :cond_7d

    .line 1412
    aget-object p0, p1, v2

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    if-lez p0, :cond_7a

    return v0

    :cond_7a
    add-int/lit8 v2, v2, 0x1

    goto :goto_6e

    :cond_7d
    return v1

    :cond_7e
    if-lez v3, :cond_81

    move v0, v4

    :cond_81
    return v0
.end method

.method public static createDividerPadding([I)Landroid/widget/ListView$DividerPadding;
    .registers 2

    .line 555
    new-instance v0, Lcom/meizu/settings/utils/MzUtils$3;

    invoke-direct {v0, p0}, Lcom/meizu/settings/utils/MzUtils$3;-><init>([I)V

    return-object v0
.end method

.method public static createShortcut(Landroid/content/Context;Ljava/lang/String;ILandroid/content/Intent;)V
    .registers 7

    .line 901
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.meizu.flyme.launcher.action.INSTALL_SHORTCUT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "duplicate"

    const/4 v2, 0x0

    .line 902
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "android.intent.extra.shortcut.NAME"

    .line 903
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 904
    invoke-static {p0, p2}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object p1

    const-string p2, "android.intent.extra.shortcut.ICON_RESOURCE"

    .line 905
    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p1, "android.intent.extra.shortcut.INTENT"

    .line 906
    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 907
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public static disableHomeKey(Landroid/view/Window;)V
    .registers 2

    .line 967
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p0

    .line 969
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->meizuFlags:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->meizuFlags:I

    return-void
.end method

.method public static disableLayoutAboveInputMethod(Landroid/app/Activity;)V
    .registers 2

    if-eqz p0, :cond_b

    .line 1149
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    const/16 v0, 0x22

    invoke-virtual {p0, v0}, Landroid/view/Window;->setSoftInputMode(I)V

    :cond_b
    return-void
.end method

.method public static doFromSetupwizardAnimation(ZLandroid/app/Activity;)V
    .registers 2

    if-eqz p0, :cond_a

    if-eqz p1, :cond_a

    const p0, 0x7f010059

    .line 1305
    invoke-virtual {p1, p0, p0}, Landroid/app/Activity;->overridePendingTransition(II)V

    :cond_a
    return-void
.end method

.method public static downloadFromMStore(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 412
    new-instance v0, Landroid/content/Intent;

    const-string v1, "meizu.intent.action.APP_DOWNLOAD_PROMPT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "title"

    .line 413
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "content"

    .line 414
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "app_package"

    .line 415
    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 417
    :try_start_16
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_19
    .catch Landroid/content/ActivityNotFoundException; {:try_start_16 .. :try_end_19} :catch_1a

    goto :goto_21

    :catch_1a
    move-exception v0

    .line 419
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    .line 421
    invoke-static {p0, p1, p2, p3}, Lcom/meizu/settings/utils/MzUtils;->showDownloadAppDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_21
    return-void
.end method

.method public static drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .registers 6

    .line 884
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 886
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 887
    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {p0, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 888
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-object v0
.end method

.method public static finishActivityInGuestMode(Landroid/app/Activity;)V
    .registers 2

    if-eqz p0, :cond_b

    .line 1021
    invoke-static {p0}, Lcom/meizu/settings/utils/MzUtils;->isGuestUser(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1022
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_b
    return-void
.end method

.method public static forceShowInputMethod(Landroid/app/Activity;)V
    .registers 2

    .line 447
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    .line 448
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    or-int/lit8 v0, v0, 0x4

    .line 449
    invoke-virtual {p0, v0}, Landroid/view/Window;->setSoftInputMode(I)V

    return-void
.end method

.method private static formatBytes(Landroid/content/res/Resources;JI)Landroid/text/format/Formatter$BytesResult;
    .registers 14

    long-to-float p1, p1

    const/4 p2, 0x0

    cmpl-float p2, p1, p2

    const v0, 0x7f120ab2

    if-nez p2, :cond_b

    move p2, v0

    goto :goto_e

    :cond_b
    const p2, 0x7f120427

    :goto_e
    const v1, 0x4479c000  # 999.0f

    cmpl-float v2, p1, v1

    const-wide/16 v3, 0x400

    const/high16 v5, 0x44800000  # 1024.0f

    if-lez v2, :cond_1d

    div-float/2addr p1, v5

    move p2, v0

    move-wide v6, v3

    goto :goto_1f

    :cond_1d
    const-wide/16 v6, 0x1

    :goto_1f
    cmpl-float v0, p1, v1

    const-wide/32 v8, 0x100000

    if-lez v0, :cond_2b

    const p2, 0x7f120c85

    div-float/2addr p1, v5

    move-wide v6, v8

    :cond_2b
    cmpl-float v0, p1, v1

    const-wide/32 v1, 0x40000000

    if-lez v0, :cond_37

    const p2, 0x7f12092b

    div-float/2addr p1, v5

    move-wide v6, v1

    :cond_37
    cmp-long v0, v6, v3

    const-string v3, "%.0f"

    const/4 v4, 0x1

    if-nez v0, :cond_40

    :cond_3e
    move v0, v4

    goto :goto_57

    :cond_40
    cmp-long v0, v6, v8

    if-nez v0, :cond_4f

    const/16 v0, 0xa

    const/high16 v1, 0x42c80000  # 100.0f

    cmpg-float v1, p1, v1

    if-gez v1, :cond_57

    const-string v3, "%.1f"

    goto :goto_57

    :cond_4f
    cmp-long v0, v6, v1

    if-nez v0, :cond_3e

    const/16 v0, 0x64

    const-string v3, "%.2f"

    :cond_57
    :goto_57
    new-array v1, v4, [Ljava/lang/Object;

    .line 1078
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/4 v5, 0x0

    aput-object v2, v1, v5

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    and-int/lit8 p3, p3, 0x2

    if-nez p3, :cond_6b

    const-wide/16 v2, 0x0

    goto :goto_75

    :cond_6b
    int-to-float p3, v0

    mul-float/2addr p1, p3

    .line 1084
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    int-to-long v2, p1

    mul-long/2addr v2, v6

    int-to-long v6, v0

    div-long/2addr v2, v6

    .line 1086
    :goto_75
    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 1089
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result p1

    sub-int/2addr p1, v4

    invoke-virtual {v1, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    .line 1090
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result p2

    if-le p2, v4, :cond_9d

    const-string p2, "."

    invoke-virtual {v1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_9d

    const/16 p2, 0x30

    if-ne p1, p2, :cond_9d

    .line 1091
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result p1

    sub-int/2addr p1, v4

    invoke-virtual {v1, v5, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1093
    :cond_9d
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result p1

    sub-int/2addr p1, v4

    invoke-virtual {v1, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    .line 1094
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result p2

    if-le p2, v4, :cond_b9

    const/16 p2, 0x2e

    if-ne p1, p2, :cond_b9

    .line 1095
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result p1

    sub-int/2addr p1, v4

    invoke-virtual {v1, v5, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1098
    :cond_b9
    new-instance p1, Landroid/text/format/Formatter$BytesResult;

    invoke-direct {p1, v1, p0, v2, v3}, Landroid/text/format/Formatter$BytesResult;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    return-object p1
.end method

.method public static formatFileSize(Landroid/content/Context;J)Ljava/lang/String;
    .registers 7

    const-string v0, ""

    if-nez p0, :cond_5

    return-object v0

    .line 1105
    :cond_5
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, p1, p2, v2}, Lcom/meizu/settings/utils/MzUtils;->formatBytes(Landroid/content/res/Resources;JI)Landroid/text/format/Formatter$BytesResult;

    move-result-object p1

    const p2, 0x1040287

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    .line 1106
    iget-object v3, p1, Landroid/text/format/Formatter$BytesResult;->value:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object p1, p1, Landroid/text/format/Formatter$BytesResult;->units:Ljava/lang/String;

    aput-object p1, v1, v2

    invoke-virtual {p0, p2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/meizu/settings/utils/MzUtils;->bidiWrap(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, " "

    .line 1108
    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatStringPunctuation(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    if-eqz p0, :cond_5f

    .line 673
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_5f

    .line 678
    :cond_9
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 679
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    const-string v0, "。"

    goto :goto_22

    :cond_20
    const-string v0, "."

    .line 687
    :goto_22
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    .line 688
    invoke-virtual {p0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p0, v2, :cond_34

    move p0, v2

    goto :goto_35

    :cond_34
    move p0, v1

    :goto_35
    if-eqz p0, :cond_3e

    .line 689
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_4b

    goto :goto_49

    .line 690
    :cond_3e
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v2

    if-ne v0, v3, :cond_4b

    :goto_49
    move v0, v2

    goto :goto_4c

    :cond_4b
    move v0, v1

    :goto_4c
    if-eqz v0, :cond_5f

    if-eqz p0, :cond_55

    .line 692
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_5e

    .line 693
    :cond_55
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    sub-int/2addr p0, v2

    invoke-virtual {p1, v1, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :goto_5e
    move-object p1, p0

    :cond_5f
    :goto_5f
    return-object p1
.end method

.method private static getAbsListViewPaddingArray(Landroid/content/Context;[IZ)[I
    .registers 4

    if-nez p1, :cond_2e

    if-eqz p2, :cond_8

    const p1, 0x7f0701c0

    goto :goto_b

    :cond_8
    const p1, 0x7f0701bf

    :goto_b
    if-eqz p2, :cond_11

    const p2, 0x7f0701c4

    goto :goto_14

    :cond_11
    const p2, 0x7f0701c3

    .line 572
    :goto_14
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 573
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 574
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .line 575
    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    const/4 p2, 0x2

    new-array p2, p2, [I

    const/4 v0, 0x0

    aput p1, p2, v0

    const/4 p1, 0x1

    aput p0, p2, p1

    move-object p1, p2

    :cond_2e
    return-object p1
.end method

.method public static getBaseBandString(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 1490
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string p0, ""

    return-object p0

    :cond_9
    const-string v0, ","

    .line 1493
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    .line 1494
    aget-object p0, p0, v0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getBatteryStatus(Landroid/content/res/Resources;Landroid/content/Intent;Z)Ljava/lang/String;
    .registers 7

    const-string v0, "plugged"

    const/4 v1, 0x0

    .line 1327
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    const-string v2, "status"

    .line 1328
    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/4 v2, 0x4

    const/4 v3, 0x2

    if-ne p1, v3, :cond_3e

    if-ne v0, v1, :cond_1e

    if-eqz p2, :cond_1a

    const p1, 0x7f12028d

    goto :goto_39

    :cond_1a
    const p1, 0x7f12028c

    goto :goto_39

    :cond_1e
    if-ne v0, v3, :cond_2a

    if-eqz p2, :cond_26

    const p1, 0x7f120290

    goto :goto_39

    :cond_26
    const p1, 0x7f12028f

    goto :goto_39

    :cond_2a
    if-ne v0, v2, :cond_36

    if-eqz p2, :cond_32

    const p1, 0x7f120292

    goto :goto_39

    :cond_32
    const p1, 0x7f120291

    goto :goto_39

    :cond_36
    const p1, 0x7f12028b

    .line 1345
    :goto_39
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_65

    :cond_3e
    const/4 p2, 0x3

    if-ne p1, p2, :cond_49

    const p1, 0x7f120293

    .line 1347
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_65

    :cond_49
    if-ne p1, v2, :cond_53

    const p1, 0x7f120296

    .line 1349
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_65

    :cond_53
    const/4 p2, 0x5

    if-ne p1, p2, :cond_5e

    const p1, 0x7f120294

    .line 1351
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_65

    :cond_5e
    const p1, 0x7f120297

    .line 1353
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_65
    return-object p0
.end method

.method public static getCompareResult(Ljava/lang/String;Ljava/lang/String;)I
    .registers 4

    .line 318
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, -0x1

    if-lez v0, :cond_2c

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2c

    .line 319
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1e

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 320
    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 321
    :cond_1e
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_26

    const/4 p0, 0x1

    return p0

    .line 323
    :cond_26
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_2c

    :cond_2c
    return v1
.end method

.method public static getCurrentFunction()Ljava/lang/String;
    .registers 4

    const-string v0, "none"

    const-string v1, "sys.usb.config"

    .line 513
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2c

    .line 514
    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-lez v2, :cond_16

    const/4 v0, 0x0

    .line 516
    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_3e

    .line 518
    :cond_16
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3e

    const-string v2, "adb"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3e

    const-string v2, "mtp"

    .line 519
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3d

    const-string v2, "sys.usb.charging"

    const-string v3, "no"

    .line 520
    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "yes"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3d

    goto :goto_3e

    :cond_3d
    move-object v0, v1

    :cond_3e
    :goto_3e
    return-object v0
.end method

.method public static getDefaultIMEI(Landroid/content/Context;)Ljava/lang/String;
    .registers 1

    .line 876
    invoke-static {}, Landroid/telephony/MzTelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getDeviceFlymeModel()Ljava/lang/String;
    .registers 2

    const-string v0, "ro.product.flyme.model"

    const-string v1, "unknown"

    .line 1247
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDisplayMetrics(Landroid/app/Activity;)[I
    .registers 4

    .line 782
    new-instance v0, Landroid/view/DisplayInfo;

    invoke-direct {v0}, Landroid/view/DisplayInfo;-><init>()V

    .line 783
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p0

    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    const/4 p0, 0x2

    new-array p0, p0, [I

    .line 784
    iget v1, v0, Landroid/view/DisplayInfo;->appWidth:I

    const/4 v2, 0x0

    aput v1, p0, v2

    iget v0, v0, Landroid/view/DisplayInfo;->appHeight:I

    const/4 v1, 0x1

    aput v0, p0, v1

    return-object p0
.end method

.method public static getImgResource(Ljava/lang/String;Landroid/content/Context;)I
    .registers 4

    .line 1498
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const-string v1, "drawable"

    invoke-virtual {v0, p0, v1, p1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getListViewDividerPadding(Landroid/content/Context;[I)Landroid/widget/ListView$DividerPadding;
    .registers 3

    const/4 v0, 0x1

    .line 535
    invoke-static {p0, p1, v0}, Lcom/meizu/settings/utils/MzUtils;->getListViewDividerPadding(Landroid/content/Context;[IZ)Landroid/widget/ListView$DividerPadding;

    move-result-object p0

    return-object p0
.end method

.method public static getListViewDividerPadding(Landroid/content/Context;[IZ)Landroid/widget/ListView$DividerPadding;
    .registers 3

    if-nez p1, :cond_6

    .line 548
    invoke-static {p0, p1, p2}, Lcom/meizu/settings/utils/MzUtils;->getAbsListViewPaddingArray(Landroid/content/Context;[IZ)[I

    move-result-object p1

    .line 550
    :cond_6
    invoke-static {p1}, Lcom/meizu/settings/utils/MzUtils;->createDividerPadding([I)Landroid/widget/ListView$DividerPadding;

    move-result-object p0

    return-object p0
.end method

.method public static getListViewDividerPaddingWithIcon(Landroid/content/Context;[IZ)Landroid/widget/ListView$DividerPadding;
    .registers 4

    if-nez p1, :cond_2e

    if-eqz p2, :cond_8

    const p1, 0x7f0701c2

    goto :goto_b

    :cond_8
    const p1, 0x7f0701c1

    :goto_b
    if-eqz p2, :cond_11

    const p2, 0x7f0701c4

    goto :goto_14

    :cond_11
    const p2, 0x7f0701c3

    .line 645
    :goto_14
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 646
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 647
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .line 648
    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    const/4 p2, 0x2

    new-array p2, p2, [I

    const/4 v0, 0x0

    aput p1, p2, v0

    const/4 p1, 0x1

    aput p0, p2, p1

    move-object p1, p2

    .line 654
    :cond_2e
    new-instance p0, Lcom/meizu/settings/utils/MzUtils$6;

    invoke-direct {p0, p1}, Lcom/meizu/settings/utils/MzUtils$6;-><init>([I)V

    return-object p0
.end method

.method public static getMediumTypeface()Landroid/graphics/Typeface;
    .registers 2

    const-string v0, "sans-serif-medium"

    const/4 v1, 0x0

    .line 973
    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method

.method public static getSerialNumber()Ljava/lang/String;
    .registers 1

    .line 871
    invoke-static {}, Landroid/os/Build;->getSerial()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSettinsSystemString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 333
    invoke-static {p0, p1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_7

    return-object p2

    :cond_7
    return-object p0
.end method

.method public static getString(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    const-string v0, "unknow"

    .line 1534
    invoke-static {p0, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getStringFromOtherPackage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 1431
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 1434
    :try_start_4
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object p0
    :try_end_8
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_8} :catch_9

    goto :goto_e

    :catch_9
    move-exception p0

    .line 1436
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    const/4 p0, 0x0

    :goto_e
    if-eqz p0, :cond_1b

    .line 1439
    invoke-virtual {p0, p2, p3, p1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_1b

    .line 1441
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1b
    const-string p0, ""

    return-object p0
.end method

.method public static handleCanclelTextClick(Landroid/app/Activity;)V
    .registers 2

    const v0, 0x7f0a0145

    .line 494
    invoke-static {p0, v0}, Lcom/meizu/settings/utils/MzUtils;->handleClickToFinishActivity(Landroid/app/Activity;I)V

    return-void
.end method

.method public static handleClickToFinishActivity(Landroid/app/Activity;I)V
    .registers 3

    .line 502
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    .line 503
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 504
    new-instance v0, Lcom/meizu/settings/utils/MzUtils$2;

    invoke-direct {v0, p0}, Lcom/meizu/settings/utils/MzUtils$2;-><init>(Landroid/app/Activity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static hasHardwareMainKeys()Z
    .registers 1

    const/4 v0, 0x0

    return v0
.end method

.method public static hasNavigationBar(Landroid/content/Context;)Z
    .registers 3

    .line 1268
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x0

    const-string v1, "mz_show_navigation_bar"

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_e

    const/4 v0, 0x1

    :cond_e
    return v0
.end method

.method public static hideActionbar(Landroid/content/Context;)V
    .registers 2

    .line 479
    instance-of v0, p0, Lflyme/support/v7/app/AppCompatActivity;

    if-eqz v0, :cond_c

    .line 480
    move-object v0, p0

    check-cast v0, Lflyme/support/v7/app/AppCompatActivity;

    invoke-virtual {v0}, Lflyme/support/v7/app/AppCompatActivity;->getSupportActionBar()Lflyme/support/v7/app/ActionBar;

    move-result-object v0

    goto :goto_19

    .line 481
    :cond_c
    instance-of v0, p0, Lflyme/support/v7/app/AppCompatPreferenceActivity;

    if-eqz v0, :cond_18

    .line 482
    move-object v0, p0

    check-cast v0, Lflyme/support/v7/app/AppCompatPreferenceActivity;

    invoke-virtual {v0}, Lflyme/support/v7/app/AppCompatPreferenceActivity;->getSupportActionBar()Lflyme/support/v7/app/ActionBar;

    move-result-object v0

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    :goto_19
    if-eqz v0, :cond_1e

    .line 486
    invoke-virtual {v0}, Lflyme/support/v7/app/ActionBar;->hide()V

    .line 490
    :cond_1e
    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    const/high16 v0, 0x4000000

    invoke-virtual {p0, v0}, Landroid/view/Window;->clearFlags(I)V

    return-void
.end method

.method public static hideInputMethod(Landroid/content/Context;Landroid/widget/EditText;)V
    .registers 3

    const-string v0, "input_method"

    .line 453
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/inputmethod/InputMethodManager;

    .line 454
    invoke-virtual {p1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    return-void
.end method

.method public static hideNavigationBar(Landroid/view/Window;Lflyme/support/v7/app/ActionBar;)V
    .registers 3

    .line 1274
    :try_start_0
    invoke-virtual {p1}, Lflyme/support/v7/app/ActionBar;->getSubDecorView()Landroid/view/ViewGroup;

    move-result-object p1

    check-cast p1, Lflyme/support/v7/widget/ActionBarOverlayLayout;

    const/4 v0, 0x1

    .line 1275
    invoke-virtual {p1, v0}, Lflyme/support/v7/widget/ActionBarOverlayLayout;->setFullWindowContent(Z)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_b

    goto :goto_f

    :catch_b
    move-exception p1

    .line 1277
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1279
    :goto_f
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getSystemUiVisibility()I

    move-result p1

    or-int/lit8 p1, p1, 0x2

    or-int/lit16 p1, p1, 0x1000

    .line 1282
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method

.method public static installAppFromMzStore(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5

    :try_start_0
    const-string v0, "market://details?id=%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 940
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 941
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string p1, "com.meizu.mstore"

    .line 942
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 943
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1f
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_1f} :catch_20

    goto :goto_24

    :catch_20
    move-exception p0

    .line 945
    invoke-virtual {p0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    :goto_24
    return-void
.end method

.method public static isAAFRunning()Z
    .registers 2

    const-string v0, "persist.sys.at.open"

    const-string v1, "0"

    .line 1360
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isAboveAndroidM()Z
    .registers 2

    .line 963
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public static isActivityActionExist(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 3

    .line 275
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 p1, 0x10000

    invoke-virtual {p0, v0, p1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_1a

    .line 277
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-nez p0, :cond_18

    goto :goto_1a

    :cond_18
    const/4 p0, 0x1

    return p0

    :cond_1a
    :goto_1a
    const/4 p0, 0x0

    return p0
.end method

.method public static isCTA()Z
    .registers 2

    .line 173
    sget-object v0, Landroid/os/BuildExt;->CTA:Ljava/lang/String;

    const-string v1, "cta"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isChinamobileVersion()Z
    .registers 2

    const-string v0, "ro.vendor.customize.isp"

    const-string v1, "unknown"

    .line 1317
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1318
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_18

    const-string v1, "chinamobile"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    const/4 v0, 0x1

    return v0

    :cond_18
    const/4 v0, 0x0

    return v0
.end method

.method public static isChineseLanguage()Z
    .registers 2

    .line 921
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 922
    sget-object v1, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    return v0

    :cond_16
    const/4 v0, 0x0

    return v0
.end method

.method public static isChineseOrEnglishLanguage()Z
    .registers 2

    .line 911
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 912
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_23

    sget-object v1, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    .line 913
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    goto :goto_23

    :cond_21
    const/4 v0, 0x0

    return v0

    :cond_23
    :goto_23
    const/4 v0, 0x1

    return v0
.end method

.method public static isCtsRunning(Landroid/content/Context;)Z
    .registers 2

    const-string v0, "device_states"

    .line 1224
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lmeizu/os/DeviceStateManager;

    if-eqz p0, :cond_f

    .line 1226
    invoke-virtual {p0}, Lmeizu/os/DeviceStateManager;->isCtsRunning()Z

    move-result p0

    return p0

    :cond_f
    const/4 p0, 0x0

    return p0
.end method

.method public static isDeviceRooted(Landroid/content/Context;)Z
    .registers 3

    const-string v0, "device_states"

    .line 223
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lmeizu/os/DeviceStateManager;

    const/4 v0, 0x0

    if-eqz p0, :cond_19

    .line 225
    sget-object v1, Lmeizu/os/DeviceStateManager$RemoteHandle;->Root:Lmeizu/os/DeviceStateManager$RemoteHandle;

    invoke-virtual {v1}, Lmeizu/os/DeviceStateManager$RemoteHandle;->ordinal()I

    move-result v1

    invoke-virtual {p0, v1}, Lmeizu/os/DeviceStateManager;->doCheckState(I)I

    move-result p0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_19

    move v0, v1

    :cond_19
    return v0
.end method

.method public static isEasyModeOpened(Landroid/content/Context;)Z
    .registers 3

    .line 721
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x0

    const-string v1, "mz_easy_mode"

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_f

    move v0, v1

    :cond_f
    return v0
.end method

.method public static isFindPhoneEnabled(Landroid/content/ContentResolver;)Z
    .registers 3

    const-string v0, "com.meizu.flyme.FindPhone"

    const/4 v1, -0x1

    .line 1425
    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public static isFingerprintSensorInSide()Z
    .registers 1

    .line 1255
    invoke-static {}, Lcom/meizu/settings/utils/MzUtils;->isM1712()Z

    move-result v0

    return v0
.end method

.method public static isGuestUser(Landroid/content/Context;)Z
    .registers 2

    const-string v0, "user"

    .line 121
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/UserManager;

    .line 122
    invoke-virtual {p0}, Landroid/os/UserManager;->isGuestUser()Z

    move-result p0

    return p0
.end method

.method public static isInAntiAddictionMode(Landroid/content/Context;)Z
    .registers 3

    .line 1299
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x0

    const-string v1, "mz_anti_addiction_mode"

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_f

    move v0, v1

    :cond_f
    return v0
.end method

.method public static isIntentResolvable(Landroid/content/Context;Landroid/content/Intent;)Z
    .registers 3

    const/4 v0, 0x0

    if-eqz p0, :cond_11

    if-nez p1, :cond_6

    goto :goto_11

    .line 314
    :cond_6
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object p0

    if-eqz p0, :cond_11

    const/4 v0, 0x1

    :cond_11
    :goto_11
    return v0
.end method

.method public static isM1712()Z
    .registers 2

    .line 1251
    invoke-static {}, Lcom/meizu/settings/utils/MzUtils;->getDeviceFlymeModel()Ljava/lang/String;

    move-result-object v0

    const-string v1, "m1712"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isManagedProfile(Landroid/os/UserManager;I)Z
    .registers 2

    if-eqz p0, :cond_f

    .line 1294
    invoke-virtual {p0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object p0

    if-eqz p0, :cond_d

    .line 1295
    invoke-virtual {p0}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result p0

    goto :goto_e

    :cond_d
    const/4 p0, 0x0

    :goto_e
    return p0

    .line 1292
    :cond_f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "userManager must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static isNonalphabetic(Ljava/lang/String;)Z
    .registers 4

    .line 930
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_29

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x41

    if-lt v1, v2, :cond_29

    .line 931
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x5a

    if-le v1, v2, :cond_1f

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x61

    if-lt v1, v2, :cond_29

    :cond_1f
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    const/16 v1, 0x7a

    if-le p0, v1, :cond_28

    goto :goto_29

    :cond_28
    return v0

    :cond_29
    :goto_29
    const/4 p0, 0x1

    return p0
.end method

.method public static isPackageDataExist(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 3

    .line 266
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/16 v0, 0x2000

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_b

    const/4 p0, 0x1

    return p0

    :catch_b
    const/4 p0, 0x0

    return p0
.end method

.method public static isPackageExist(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 3

    .line 239
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9

    return v0

    :catch_9
    const/4 p0, 0x0

    return p0
.end method

.method public static isPackageExistAndHasAction(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5

    .line 291
    invoke-static {p0, p1}, Lcom/meizu/settings/utils/MzUtils;->isPackageExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 295
    :cond_8
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 p2, 0x10000

    invoke-virtual {p0, v0, p2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    .line 297
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1b
    :goto_1b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_36

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/pm/ResolveInfo;

    .line 298
    iget-object p2, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-nez p2, :cond_2c

    goto :goto_1b

    .line 301
    :cond_2c
    iget-object p2, p2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 302
    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1b

    const/4 p0, 0x1

    return p0

    :cond_36
    return v1
.end method

.method public static isPermissionAllow(Landroid/content/Context;)Z
    .registers 3

    .line 1311
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const/4 v0, 0x1

    const-string v1, "show_permission_dialog"

    .line 1313
    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method

.method public static isPowerSuperSavingMode(Landroid/content/Context;)Z
    .registers 3

    .line 131
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object v0, Lcom/meizu/settings/utils/MzUtils;->MZ_CURRENT_POWER_MODE:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x3

    if-ne p0, v0, :cond_10

    const/4 p0, 0x1

    return p0

    :cond_10
    return v1
.end method

.method public static isQcomPlatform()Z
    .registers 4

    const-string v0, "unknown"

    const-string v1, "ro.soc.vendor"

    .line 1378
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "qcom"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1f

    .line 1379
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "QCOM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    goto :goto_1f

    :cond_1d
    const/4 v0, 0x0

    goto :goto_20

    :cond_1f
    :goto_1f
    const/4 v0, 0x1

    :goto_20
    return v0
.end method

.method public static isSoftProduct()Z
    .registers 2

    const-string v0, "ro.meizu.build.spt"

    const-string v1, "0"

    .line 530
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    .line 531
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isSupportBreatheLight()Z
    .registers 1

    const/4 v0, 0x1

    return v0
.end method

.method public static isSystemPackage(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 3

    const/4 v0, 0x0

    .line 755
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    if-eqz p0, :cond_24

    .line 757
    invoke-virtual {p0}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result p1

    if-nez p1, :cond_1e

    invoke-virtual {p0}, Landroid/content/pm/ApplicationInfo;->isPrivilegedApp()Z

    move-result p1

    if-nez p1, :cond_1e

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->privateFlags:I
    :try_end_19
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_19} :catch_20

    const/high16 p1, -0x80000000

    and-int/2addr p0, p1

    if-eqz p0, :cond_24

    :cond_1e
    const/4 p0, 0x1

    return p0

    :catch_20
    move-exception p0

    .line 762
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :cond_24
    return v0
.end method

.method public static isSystemPackageCanUninstall(Landroid/content/pm/ApplicationInfo;)Z
    .registers 3

    const/4 v0, 0x1

    if-eqz p0, :cond_c

    .line 770
    iget p0, p0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    const/high16 v1, -0x80000000

    and-int/2addr p0, v1

    if-eqz p0, :cond_b

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :cond_c
    :goto_c
    return v0
.end method

.method public static resetQuickWakeupSettings(Landroid/content/Context;Ljava/lang/String;)V
    .registers 14

    .line 801
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "mz_quick_wakeup_slide_right_package_detail"

    const-string v2, "mz_quick_wakeup_slide_right"

    .line 802
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "mz_quick_wakeup_draw_c_package_detail"

    const-string v2, "mz_quick_wakeup_draw_c"

    .line 804
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "mz_quick_wakeup_draw_e_package_detail"

    const-string v2, "mz_quick_wakeup_draw_e"

    .line 806
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "mz_quick_wakeup_draw_m_package_detail"

    const-string v2, "mz_quick_wakeup_draw_m"

    .line 808
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "mz_quick_wakeup_draw_o_package_detail"

    const-string v2, "mz_quick_wakeup_draw_o"

    .line 810
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "mz_quick_wakeup_draw_s_package_detail"

    const-string v2, "mz_quick_wakeup_draw_s"

    .line 812
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "mz_quick_wakeup_draw_v_package_detail"

    const-string v2, "mz_quick_wakeup_draw_v"

    .line 814
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "mz_quick_wakeup_draw_w_package_detail"

    const-string v2, "mz_quick_wakeup_draw_w"

    .line 816
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "mz_quick_wakeup_draw_z_package_detail"

    const-string v2, "mz_quick_wakeup_draw_z"

    .line 818
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 820
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 821
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 824
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f120055

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 826
    :cond_5b
    :goto_5b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_fc

    .line 827
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 828
    invoke-static {v1, v3, v2}, Lcom/meizu/settings/utils/MzUtils;->getSettinsSystemString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 829
    invoke-virtual {v4, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5b

    .line 830
    invoke-static {p0}, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->getInstance(Landroid/content/Context;)Lcom/meizu/settings/security/FlymeLockPasswordUtils;

    move-result-object v5

    invoke-virtual {v5}, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->isInSecretsMode()Z

    move-result v5

    const-string v6, "|"

    .line 831
    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eqz v7, :cond_e8

    const-string v7, "\\|"

    .line 835
    invoke-virtual {v4, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 836
    invoke-static {p0, p1}, Lcom/meizu/settings/utils/MzUtils;->isPackageDataExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v10

    const-string v11, "null|"

    if-eqz v10, :cond_ad

    .line 838
    aget-object v5, v7, v8

    invoke-virtual {v5, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_aa

    .line 839
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, v7, v9

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_aa
    move-object v5, v4

    :cond_ab
    move v9, v8

    goto :goto_ea

    :cond_ad
    const-string v4, "null"

    if-eqz v5, :cond_ce

    .line 843
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v10, v7, v8

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 844
    aget-object v6, v7, v8

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_ab

    goto :goto_ea

    .line 848
    :cond_ce
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v6, v7, v9

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 849
    aget-object v6, v7, v9

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_ab

    goto :goto_ea

    :cond_e8
    const-string v5, ""

    :goto_ea
    if-eqz v9, :cond_f3

    .line 859
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4, v3, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 861
    :cond_f3
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4, v3, v5}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_5b

    :cond_fc
    return-void
.end method

.method public static final resetSougouPackageVersionIfNeed(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    const-string v0, "com.sohu.inputmethod.sogou/.SogouIME"

    .line 951
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2d

    const-string p1, "sogou_ime_actived"

    .line 953
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_2d

    const-string v0, "FlymeInputMethodPreference"

    const-string v1, "reset sogou ime package version"

    .line 954
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 955
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 956
    invoke-static {p0}, Landroid/content/pm/FlymePackageManager;->getInstance(Landroid/content/Context;)Landroid/content/pm/FlymePackageManager;

    move-result-object p0

    const-string p1, "com.sohu.inputmethod.sogou"

    .line 957
    invoke-virtual {p0, p1}, Landroid/content/pm/FlymePackageManager;->resetVersion(Ljava/lang/String;)V

    :cond_2d
    return-void
.end method

.method public static restorePreference(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 3

    .line 1480
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "display_developer_mode_notification"

    invoke-static {p0, v0}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_11

    .line 1483
    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0

    :cond_11
    const/4 p0, 0x0

    return p0
.end method

.method public static setActionbarDividerVisiable(Landroid/content/Context;Z)V
    .registers 4

    .line 464
    instance-of v0, p0, Lflyme/support/v7/app/AppCompatActivity;

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    .line 465
    move-object v0, p0

    check-cast v0, Lflyme/support/v7/app/AppCompatActivity;

    invoke-virtual {v0}, Lflyme/support/v7/app/AppCompatActivity;->getSupportActionBar()Lflyme/support/v7/app/ActionBar;

    move-result-object v0

    goto :goto_1a

    .line 466
    :cond_d
    instance-of v0, p0, Lflyme/support/v7/app/AppCompatPreferenceActivity;

    if-eqz v0, :cond_19

    .line 467
    move-object v0, p0

    check-cast v0, Lflyme/support/v7/app/AppCompatPreferenceActivity;

    invoke-virtual {v0}, Lflyme/support/v7/app/AppCompatPreferenceActivity;->getSupportActionBar()Lflyme/support/v7/app/ActionBar;

    move-result-object v0

    goto :goto_1a

    :cond_19
    move-object v0, v1

    :goto_1a
    if-eqz v0, :cond_2c

    if-eqz p1, :cond_29

    .line 471
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f080614

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 470
    :cond_29
    invoke-virtual {v0, v1}, Lflyme/support/v7/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2c
    return-void
.end method

.method public static setCloseAnimationToPreviousPage(Landroid/content/Context;)V
    .registers 3

    .line 1457
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_f

    .line 1458
    check-cast p0, Landroid/app/Activity;

    const v0, 0xa01000e

    const v1, 0xa01000f

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    :cond_f
    return-void
.end method

.method public static setDecorViewBackground(Landroid/app/Activity;)V
    .registers 3

    .line 664
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 665
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f06028b

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    .line 664
    invoke-virtual {v0, p0}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method

.method public static setListViewHoldPress(Landroid/widget/ListView;)V
    .registers 2

    const/4 v0, 0x1

    .line 1027
    invoke-virtual {p0, v0}, Landroid/widget/ListView;->setEnableHoldPress(Z)V

    return-void
.end method

.method public static setNavigationBarDarIcon(Landroid/app/Activity;Z)V
    .registers 3

    .line 1233
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v0

    if-eqz p1, :cond_11

    or-int/lit8 p1, v0, 0x10

    goto :goto_13

    :cond_11
    and-int/lit8 p1, v0, -0x11

    .line 1239
    :goto_13
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method

.method public static setOnPowerModeChangeListener(Landroid/content/Context;Landroid/database/ContentObserver;Z)V
    .registers 4

    if-eqz p2, :cond_11

    const-string p2, "mz_current_power_mode"

    .line 140
    invoke-static {p2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    .line 141
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0, p1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_18

    .line 143
    :cond_11
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :goto_18
    return-void
.end method

.method public static setOpenAnimationToNextPage(Landroid/content/Context;)V
    .registers 3

    .line 1449
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_f

    .line 1450
    check-cast p0, Landroid/app/Activity;

    const v0, 0xa010010

    const v1, 0xa010011

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    :cond_f
    return-void
.end method

.method public static setPageScrollbarStyle(Landroid/content/Context;Landroid/view/View;)V
    .registers 3

    const/high16 v0, 0x2000000

    .line 390
    invoke-virtual {p1, v0}, Landroid/view/View;->setScrollBarStyle(I)V

    .line 391
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f070662

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    return-void
.end method

.method public static setViewAdjustToActionbarAndMenuBar(Landroid/content/Context;Landroid/view/View;)V
    .registers 6

    .line 373
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f070581

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    .line 375
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_29

    .line 376
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 377
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    neg-int p0, p0

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v3

    invoke-virtual {v0, v1, p0, v2, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 379
    :cond_29
    instance-of p0, p1, Landroid/widget/ListView;

    if-eqz p0, :cond_32

    .line 380
    check-cast p1, Landroid/widget/ListView;

    invoke-static {p1}, Lcom/meizu/settings/utils/MzUtils;->setListViewHoldPress(Landroid/widget/ListView;)V

    :cond_32
    return-void
.end method

.method public static showDownloadAppDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 427
    new-instance v0, Landroid/app/AlertDialog$Builder;

    const/4 v1, 0x5

    invoke-direct {v0, p0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 429
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 430
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const p1, 0x7f120442

    const/4 p2, 0x0

    .line 431
    invoke-virtual {v0, p1, p2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 432
    new-instance p1, Lcom/meizu/settings/utils/MzUtils$1;

    invoke-direct {p1, p3, p0}, Lcom/meizu/settings/utils/MzUtils$1;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    const p0, 0x7f120f9e

    invoke-virtual {v0, p0, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 443
    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method public static showFlymeToast(Landroid/content/Context;Ljava/lang/String;II)V
    .registers 5

    if-nez p0, :cond_3

    return-void

    .line 979
    :cond_3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 980
    invoke-static {p0, p1, p3}, Lcom/meizu/common/widget/CompleteToast;->makeText(Landroid/content/Context;Ljava/lang/String;I)Lcom/meizu/common/widget/CompleteToast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    goto :goto_1a

    :cond_11
    if-lez p2, :cond_1a

    .line 982
    invoke-static {p0, p2, p3}, Lcom/meizu/common/widget/CompleteToast;->makeText(Landroid/content/Context;II)Lcom/meizu/common/widget/CompleteToast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_1a
    :goto_1a
    return-void
.end method

.method public static showInputMethod(Landroid/content/Context;Landroid/widget/EditText;)V
    .registers 3

    const-string v0, "input_method"

    .line 458
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/inputmethod/InputMethodManager;

    const/4 v0, 0x0

    .line 459
    invoke-virtual {p0, p1, v0}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    return-void
.end method

.method public static showLoadingDialog(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;IZLandroid/content/DialogInterface$OnCancelListener;)Lcom/meizu/common/app/LoadingDialog;
    .registers 16

    const/4 v7, 0x0

    const/4 v8, -0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    .line 1016
    invoke-static/range {v0 .. v8}, Lcom/meizu/settings/utils/MzUtils;->showLoadingDialog(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;IZLandroid/content/DialogInterface$OnCancelListener;Landroid/graphics/drawable/Drawable;I)Lcom/meizu/common/app/LoadingDialog;

    move-result-object p0

    return-object p0
.end method

.method public static showLoadingDialog(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;IZLandroid/content/DialogInterface$OnCancelListener;Landroid/graphics/drawable/Drawable;I)Lcom/meizu/common/app/LoadingDialog;
    .registers 10

    .line 990
    new-instance v0, Lcom/meizu/common/app/LoadingDialog;

    invoke-direct {v0, p0}, Lcom/meizu/common/app/LoadingDialog;-><init>(Landroid/content/Context;)V

    if-lez p2, :cond_b

    .line 992
    invoke-virtual {v0, p2}, Landroid/app/Dialog;->setTitle(I)V

    goto :goto_14

    .line 993
    :cond_b
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_14

    .line 994
    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    :cond_14
    :goto_14
    if-lez p4, :cond_1a

    .line 997
    invoke-virtual {v0, p4}, Lcom/meizu/common/app/LoadingDialog;->setMessage(I)V

    goto :goto_23

    .line 998
    :cond_1a
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_23

    .line 999
    invoke-virtual {v0, p3}, Lcom/meizu/common/app/LoadingDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1001
    :cond_23
    :goto_23
    invoke-virtual {v0, p5}, Lcom/meizu/common/app/LoadingDialog;->setCancelable(Z)V

    .line 1002
    invoke-virtual {v0, p6}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    if-eqz p7, :cond_2f

    .line 1004
    invoke-virtual {v0, p7}, Lcom/meizu/common/app/LoadingDialog;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_35

    :cond_2f
    const/4 p0, -0x1

    if-eq p8, p0, :cond_35

    .line 1006
    invoke-virtual {v0, p8}, Lcom/meizu/common/app/LoadingDialog;->setBackgroundDrawableResource(I)V

    .line 1008
    :cond_35
    :goto_35
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-object v0
.end method

.method public static showNAL()Z
    .registers 2

    const-string v0, "ro.boot.verify_scramble"

    const-string v1, "-1"

    .line 1364
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static showPreferenceScreenBottomDivider(Landroid/preference/PreferenceScreen;Z)V
    .registers 2

    .line 699
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceScreen;->showBottomDivider(Z)V

    return-void
.end method

.method public static showSlideNotice(Landroid/content/Context;I)V
    .registers 2

    if-nez p0, :cond_3

    return-void

    .line 207
    :cond_3
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/meizu/settings/utils/MzUtils;->showSlideNotice(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static showSlideNotice(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5

    if-eqz p0, :cond_29

    if-nez p1, :cond_5

    goto :goto_29

    :cond_5
    const/4 v0, 0x1

    .line 214
    invoke-static {p0, p1, v0, v0}, Lcom/meizu/common/app/SlideNotice;->makeNotice(Landroid/content/Context;Ljava/lang/CharSequence;II)Lcom/meizu/common/app/SlideNotice;

    move-result-object p1

    .line 216
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060041

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/meizu/common/app/SlideNotice;->setBeginColor(I)V

    .line 217
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/meizu/common/app/SlideNotice;->setEndColor(I)V

    .line 218
    invoke-virtual {p1, v0}, Lcom/meizu/common/app/SlideNotice;->setActionBarToTop(Z)V

    .line 219
    invoke-virtual {p1}, Lcom/meizu/common/app/SlideNotice;->show()V

    :cond_29
    :goto_29
    return-void
.end method

.method public static startAccountLoginActivity(Landroid/content/Context;)V
    .registers 3

    .line 167
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.meizu.account.fingerprint.setting"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.meizu.account"

    .line 168
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 169
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static startEasyModeSettings(Landroid/content/Context;)V
    .registers 5

    .line 1259
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.meizu.flyme.easylauncher"

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1260
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    .line 1262
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.meizu.flyme.EASY_MODE_SWITCH"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1263
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1264
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static startPathViewAnimation(Lcom/eftimoff/androipathview/PathView;FFIILandroid/view/animation/PathInterpolator;)V
    .registers 9

    .line 1122
    invoke-virtual {p0, p2}, Lcom/eftimoff/androipathview/PathView;->setPercentage(F)V

    .line 1124
    invoke-virtual {p0}, Lcom/eftimoff/androipathview/PathView;->getPathAnimator()Lcom/eftimoff/androipathview/PathView$AnimatorBuilder;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 v2, 0x1

    aput p2, v1, v2

    invoke-virtual {v0, v1}, Lcom/eftimoff/androipathview/PathView$AnimatorBuilder;->setFloatValue([F)V

    .line 1125
    invoke-virtual {p0}, Lcom/eftimoff/androipathview/PathView;->getPathAnimator()Lcom/eftimoff/androipathview/PathView$AnimatorBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Lcom/eftimoff/androipathview/PathView$AnimatorBuilder;->interpolator(Landroid/view/animation/Interpolator;)Lcom/eftimoff/androipathview/PathView$AnimatorBuilder;

    .line 1127
    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "lastPercent:"

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ", mCurerentPercent:"

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "PathView"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1129
    invoke-virtual {p0}, Lcom/eftimoff/androipathview/PathView;->getPathAnimator()Lcom/eftimoff/androipathview/PathView$AnimatorBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/eftimoff/androipathview/PathView$AnimatorBuilder;->duration(I)Lcom/eftimoff/androipathview/PathView$AnimatorBuilder;

    .line 1130
    invoke-virtual {p0}, Lcom/eftimoff/androipathview/PathView;->getPathAnimator()Lcom/eftimoff/androipathview/PathView$AnimatorBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/eftimoff/androipathview/PathView$AnimatorBuilder;->getObjectAnimator()Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {p1, p4}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 1131
    invoke-virtual {p0}, Lcom/eftimoff/androipathview/PathView;->getPathAnimator()Lcom/eftimoff/androipathview/PathView$AnimatorBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/eftimoff/androipathview/PathView$AnimatorBuilder;->start()V

    return-void
.end method

.method public static startShakeAnim(Landroid/view/View;)V
    .registers 3

    const/16 v0, 0x21

    new-array v0, v0, [F

    .line 157
    fill-array-data v0, :array_18

    const-string v1, "translationX"

    invoke-static {p0, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    const-wide/16 v0, 0x226

    .line 162
    invoke-virtual {p0, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p0

    .line 163
    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    nop

    :array_18
    .array-data 4
        0x0
        0x40b33333  # 5.6f
        0x418f3333  # 17.9f
        0x41f1999a  # 30.2f
        0x420f3333  # 35.8f
        0x41d33333  # 26.4f
        0x40b66666  # 5.7f
        -0x3e91999a  # -14.9f
        -0x3e3d999a  # -24.3f
        -0x3e633333  # -19.6f
        -0x3ef9999a  # -8.4f
        0x409ccccd  # 4.9f
        0x4180cccd  # 16.1f
        0x41a66666  # 20.8f
        0x41880000  # 17.0f
        0x4101999a  # 8.1f
        -0x3fd9999a  # -2.6f
        -0x3ec80000  # -11.5f
        -0x3e8b3333  # -15.3f
        -0x3ea9999a  # -13.4f
        -0x3ef4cccd  # -8.7f
        -0x3fd9999a  # -2.6f
        0x4059999a  # 3.4f
        0x4101999a  # 8.1f
        0x41200000  # 10.0f
        0x4119999a  # 9.6f
        0x41066666  # 8.4f
        0x40d9999a  # 6.8f
        0x40a00000  # 5.0f
        0x404ccccd  # 3.2f
        0x3fcccccd  # 1.6f
        0x3ecccccd  # 0.4f
        0x0
    .end array-data
.end method

.method public static supportRaiseFlipFeature(Landroid/content/Context;)Z
    .registers 3

    const-string v0, "sensor"

    .line 1370
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/SensorManager;

    const/4 v0, 0x1

    const v1, 0x10002

    .line 1372
    invoke-virtual {p0, v1, v0}, Landroid/hardware/SensorManager;->getDefaultSensor(IZ)Landroid/hardware/Sensor;

    move-result-object v1

    if-nez v1, :cond_1a

    const-string v1, "M1923"

    invoke-static {v1}, Lcom/meizu/settings/utils/MzUtils;->checkProductModel(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_23

    :cond_1a
    const v1, 0x10003

    .line 1373
    invoke-virtual {p0, v1, v0}, Landroid/hardware/SensorManager;->getDefaultSensor(IZ)Landroid/hardware/Sensor;

    move-result-object p0

    if-nez p0, :cond_35

    :cond_23
    const-string p0, "M1822"

    .line 1374
    invoke-static {p0}, Lcom/meizu/settings/utils/MzUtils;->checkProductModel(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_35

    const-string p0, "M1852"

    invoke-static {p0}, Lcom/meizu/settings/utils/MzUtils;->checkProductModel(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_34

    goto :goto_35

    :cond_34
    const/4 v0, 0x0

    :cond_35
    :goto_35
    return v0
.end method

.method public static updatePreferenceToSpecificActivityOrRemove(Landroid/content/Context;Landroid/preference/PreferenceGroup;Ljava/lang/String;I)Z
    .registers 11

    .line 1182
    invoke-virtual {p1, p2}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p2

    const/4 v0, 0x0

    if-nez p2, :cond_8

    return v0

    .line 1187
    :cond_8
    invoke-virtual {p2}, Landroid/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_50

    .line 1190
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 1191
    invoke-virtual {p0, v1, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 1192
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    move v3, v0

    :goto_1b
    if-ge v3, v2, :cond_50

    .line 1194
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 1195
    iget-object v5, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v6, 0x1

    and-int/2addr v5, v6

    if-eqz v5, :cond_4d

    .line 1199
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    iget-object v0, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v1, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    and-int/lit8 p1, p3, 0x1

    if-eqz p1, :cond_4c

    .line 1205
    invoke-virtual {v4, p0}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    :cond_4c
    return v6

    :cond_4d
    add-int/lit8 v3, v3, 0x1

    goto :goto_1b

    .line 1214
    :cond_50
    invoke-virtual {p1, p2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    return v0
.end method
