.class public Lcom/android/server/hips/server/UsbInstallManager;
.super Ljava/lang/Object;
.source "UsbInstallManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/hips/server/UsbInstallManager$ArchiveInfo;
    }
.end annotation


# static fields
.field private static final ERROR:Ljava/lang/String; = "error"

.field private static final ICON_SAVE_PATH:Ljava/lang/String; = "/data/system/usb_install"

.field public static final MODE_ALLOW:I = 0x1

.field public static final MODE_ASK:I = 0x0

.field public static final MODE_DELETE:I = -0x2

.field public static final MODE_DENY:I = -0x1

.field public static final MODE_ERROR:I = -0x3

.field public static final PREFIX:Ljava/lang/String; = "usb_install_item_"

.field private static final SHOW_DIALOG:I = 0x1

.field public static final SWITCH:Ljava/lang/String; = "usb_install_item_switch"

.field private static final SWITCH_OFF:I = -0x1

.field private static final SWITCH_ON:I = 0x1

.field private static final TAG:Ljava/lang/String; = "UsbInstallManager"

.field private static final TYPE_DELETE:I = 0x2

.field private static final TYPE_UPDATE:I = 0x1

.field private static final UPDATE_TIME:I = 0x2

.field private static mContext:Landroid/content/Context;

.field private static volatile mUsbInstallManager:Lcom/android/server/hips/server/UsbInstallManager;


# instance fields
.field private mArchiveInfo:Lcom/android/server/hips/server/UsbInstallManager$ArchiveInfo;

.field private mBuilder:Landroid/app/AlertDialog$Builder;

.field private mDialog:Landroid/app/AlertDialog;

.field private mHandler:Landroid/os/Handler;

.field private mIsDialogShowing:Z

.field private mTime:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 64
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/hips/server/UsbInstallManager;->mUsbInstallManager:Lcom/android/server/hips/server/UsbInstallManager;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    new-instance v0, Lcom/android/server/hips/server/UsbInstallManager$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/hips/server/UsbInstallManager$1;-><init>(Lcom/android/server/hips/server/UsbInstallManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/hips/server/UsbInstallManager;->mHandler:Landroid/os/Handler;

    .line 96
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/hips/server/UsbInstallManager;)Lcom/android/server/hips/server/UsbInstallManager$ArchiveInfo;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/hips/server/UsbInstallManager;

    .line 40
    iget-object v0, p0, Lcom/android/server/hips/server/UsbInstallManager;->mArchiveInfo:Lcom/android/server/hips/server/UsbInstallManager$ArchiveInfo;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/hips/server/UsbInstallManager;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .registers 4
    .param p0, "x0"  # Lcom/android/server/hips/server/UsbInstallManager;
    .param p1, "x1"  # Ljava/lang/String;
    .param p2, "x2"  # Ljava/lang/String;
    .param p3, "x3"  # Landroid/graphics/drawable/Drawable;

    .line 40
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/hips/server/UsbInstallManager;->showDialog(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/hips/server/UsbInstallManager;)I
    .registers 2
    .param p0, "x0"  # Lcom/android/server/hips/server/UsbInstallManager;

    .line 40
    iget v0, p0, Lcom/android/server/hips/server/UsbInstallManager;->mTime:I

    return v0
.end method

.method static synthetic access$202(Lcom/android/server/hips/server/UsbInstallManager;I)I
    .registers 2
    .param p0, "x0"  # Lcom/android/server/hips/server/UsbInstallManager;
    .param p1, "x1"  # I

    .line 40
    iput p1, p0, Lcom/android/server/hips/server/UsbInstallManager;->mTime:I

    return p1
.end method

.method static synthetic access$210(Lcom/android/server/hips/server/UsbInstallManager;)I
    .registers 3
    .param p0, "x0"  # Lcom/android/server/hips/server/UsbInstallManager;

    .line 40
    iget v0, p0, Lcom/android/server/hips/server/UsbInstallManager;->mTime:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/android/server/hips/server/UsbInstallManager;->mTime:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/hips/server/UsbInstallManager;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/hips/server/UsbInstallManager;

    .line 40
    iget-object v0, p0, Lcom/android/server/hips/server/UsbInstallManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/hips/server/UsbInstallManager;)Landroid/app/AlertDialog;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/hips/server/UsbInstallManager;

    .line 40
    iget-object v0, p0, Lcom/android/server/hips/server/UsbInstallManager;->mDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/server/hips/server/UsbInstallManager;Z)Z
    .registers 2
    .param p0, "x0"  # Lcom/android/server/hips/server/UsbInstallManager;
    .param p1, "x1"  # Z

    .line 40
    iput-boolean p1, p0, Lcom/android/server/hips/server/UsbInstallManager;->mIsDialogShowing:Z

    return p1
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/server/hips/server/UsbInstallManager;
    .registers 3
    .param p0, "context"  # Landroid/content/Context;

    .line 99
    sput-object p0, Lcom/android/server/hips/server/UsbInstallManager;->mContext:Landroid/content/Context;

    .line 100
    sget-object v0, Lcom/android/server/hips/server/UsbInstallManager;->mUsbInstallManager:Lcom/android/server/hips/server/UsbInstallManager;

    if-nez v0, :cond_19

    .line 101
    const-class v0, Lcom/android/server/hips/server/UsbInstallManager;

    monitor-enter v0

    .line 102
    :try_start_9
    sget-object v1, Lcom/android/server/hips/server/UsbInstallManager;->mUsbInstallManager:Lcom/android/server/hips/server/UsbInstallManager;

    if-nez v1, :cond_14

    .line 103
    new-instance v1, Lcom/android/server/hips/server/UsbInstallManager;

    invoke-direct {v1}, Lcom/android/server/hips/server/UsbInstallManager;-><init>()V

    sput-object v1, Lcom/android/server/hips/server/UsbInstallManager;->mUsbInstallManager:Lcom/android/server/hips/server/UsbInstallManager;

    .line 105
    :cond_14
    monitor-exit v0

    goto :goto_19

    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_9 .. :try_end_18} :catchall_16

    throw v1

    .line 107
    :cond_19
    :goto_19
    sget-object v0, Lcom/android/server/hips/server/UsbInstallManager;->mUsbInstallManager:Lcom/android/server/hips/server/UsbInstallManager;

    return-object v0
.end method

.method private getStateFromSecure(Ljava/lang/String;)I
    .registers 8
    .param p1, "key"  # Ljava/lang/String;

    .line 346
    const/4 v0, -0x3

    .line 347
    .local v0, "result":I
    const/4 v1, 0x0

    .line 348
    .local v1, "value":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/server/hips/server/UsbInstallManager;->getAllItems()Ljava/util/Map;

    move-result-object v2

    .line 349
    .local v2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v2, :cond_f

    .line 350
    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v1, v3

    check-cast v1, Ljava/lang/String;

    .line 352
    :cond_f
    if-eqz v1, :cond_24

    .line 353
    const-string v3, "\\:"

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 354
    .local v3, "valueArray":[Ljava/lang/String;
    if-eqz v3, :cond_24

    array-length v4, v3

    const/4 v5, 0x2

    if-ne v4, v5, :cond_24

    .line 355
    const/4 v4, 0x1

    aget-object v4, v3, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 358
    .end local v3  # "valueArray":[Ljava/lang/String;
    :cond_24
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getStateFromSecure value is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "UsbInstallManager"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    return v0
.end method

.method private static putIntoSecure(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p0, "key"  # Ljava/lang/String;
    .param p1, "value"  # Ljava/lang/String;

    .line 330
    const-string v0, "error"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_34

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_34

    .line 333
    :cond_f
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 335
    .local v0, "identity":J
    :try_start_13
    sget-object v2, Lcom/android/server/hips/server/UsbInstallManager;->mContext:Landroid/content/Context;

    .line 336
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, p0, p1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_1c} :catch_22
    .catchall {:try_start_13 .. :try_end_1c} :catchall_20

    .line 341
    :goto_1c
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 342
    goto :goto_2f

    .line 341
    :catchall_20
    move-exception v2

    goto :goto_30

    .line 337
    :catch_22
    move-exception v2

    .line 338
    .local v2, "e":Ljava/lang/Exception;
    :try_start_23
    const-string v3, "UsbInstallManager"

    const-string/jumbo v4, "putIntoSecure failed!!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2e
    .catchall {:try_start_23 .. :try_end_2e} :catchall_20

    .end local v2  # "e":Ljava/lang/Exception;
    goto :goto_1c

    .line 343
    :goto_2f
    return-void

    .line 341
    :goto_30
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 331
    .end local v0  # "identity":J
    :cond_34
    :goto_34
    return-void
.end method

.method private saveApkIcon(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .registers 11
    .param p1, "pkgName"  # Ljava/lang/String;
    .param p2, "savePath"  # Ljava/lang/String;
    .param p3, "drawable"  # Landroid/graphics/drawable/Drawable;

    .line 305
    move-object v0, p3

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 306
    .local v0, "bitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    if-nez v0, :cond_6

    .line 307
    return-void

    .line 309
    :cond_6
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 310
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 311
    .local v2, "filePath":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_18

    .line 312
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 314
    :cond_18
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".png"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 315
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_3f

    .line 316
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 319
    :cond_3f
    :try_start_3f
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    .line 320
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 321
    .local v4, "fos":Ljava/io/FileOutputStream;
    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v6, 0x64

    invoke-virtual {v1, v5, v6, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 322
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_55} :catch_56

    .line 326
    .end local v4  # "fos":Ljava/io/FileOutputStream;
    goto :goto_62

    .line 323
    :catch_56
    move-exception v4

    .line 324
    .local v4, "e":Ljava/lang/Exception;
    const-string v5, "UsbInstallManager"

    const-string/jumbo v6, "saveApkIcon: saved the apk\'s icon failed"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 327
    .end local v4  # "e":Ljava/lang/Exception;
    :goto_62
    return-void
.end method

.method private showDialog(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .registers 11
    .param p1, "pkgName"  # Ljava/lang/String;
    .param p2, "apkName"  # Ljava/lang/String;
    .param p3, "drawable"  # Landroid/graphics/drawable/Drawable;

    .line 252
    new-instance v0, Landroid/app/AlertDialog$Builder;

    sget-object v1, Lcom/android/server/hips/server/UsbInstallManager;->mContext:Landroid/content/Context;

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/server/hips/server/UsbInstallManager;->mBuilder:Landroid/app/AlertDialog$Builder;

    .line 254
    sget-object v0, Lcom/android/server/hips/server/UsbInstallManager;->mContext:Landroid/content/Context;

    const v1, 0xa0d0049

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 256
    .local v0, "view":Landroid/view/View;
    iget-object v1, p0, Lcom/android/server/hips/server/UsbInstallManager;->mBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 258
    const v1, 0xa0a003a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 259
    .local v1, "title":Landroid/widget/TextView;
    sget-object v2, Lcom/android/server/hips/server/UsbInstallManager;->mContext:Landroid/content/Context;

    const v3, 0xa1001ae

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 261
    const v2, 0xa0a0037

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 262
    .local v2, "message":Landroid/widget/TextView;
    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 264
    const v3, 0xa0a0038

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 265
    .local v3, "icon":Landroid/widget/ImageView;
    invoke-virtual {v3, p3}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 267
    iget-object v4, p0, Lcom/android/server/hips/server/UsbInstallManager;->mBuilder:Landroid/app/AlertDialog$Builder;

    sget-object v5, Lcom/android/server/hips/server/UsbInstallManager;->mContext:Landroid/content/Context;

    .line 268
    const v6, 0xa1001ac

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/android/server/hips/server/UsbInstallManager$2;

    invoke-direct {v6, p0, p1, p2}, Lcom/android/server/hips/server/UsbInstallManager$2;-><init>(Lcom/android/server/hips/server/UsbInstallManager;Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 278
    iget-object v4, p0, Lcom/android/server/hips/server/UsbInstallManager;->mBuilder:Landroid/app/AlertDialog$Builder;

    sget-object v5, Lcom/android/server/hips/server/UsbInstallManager;->mContext:Landroid/content/Context;

    .line 279
    const v6, 0xa1001ad

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/android/server/hips/server/UsbInstallManager$3;

    invoke-direct {v6, p0, p1, p2}, Lcom/android/server/hips/server/UsbInstallManager$3;-><init>(Lcom/android/server/hips/server/UsbInstallManager;Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 289
    iget-object v4, p0, Lcom/android/server/hips/server/UsbInstallManager;->mBuilder:Landroid/app/AlertDialog$Builder;

    new-instance v5, Lcom/android/server/hips/server/UsbInstallManager$4;

    invoke-direct {v5, p0}, Lcom/android/server/hips/server/UsbInstallManager$4;-><init>(Lcom/android/server/hips/server/UsbInstallManager;)V

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    .line 298
    iget-object v4, p0, Lcom/android/server/hips/server/UsbInstallManager;->mBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/hips/server/UsbInstallManager;->mDialog:Landroid/app/AlertDialog;

    .line 299
    iget-object v4, p0, Lcom/android/server/hips/server/UsbInstallManager;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x7e0

    invoke-virtual {v4, v5}, Landroid/view/Window;->setType(I)V

    .line 300
    iget-object v4, p0, Lcom/android/server/hips/server/UsbInstallManager;->mDialog:Landroid/app/AlertDialog;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 301
    iget-object v4, p0, Lcom/android/server/hips/server/UsbInstallManager;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    .line 302
    return-void
.end method


# virtual methods
.method public getAllItems()Ljava/util/Map;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 200
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 201
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v1, Lcom/android/server/hips/server/UsbInstallManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 202
    .local v1, "resolver":Landroid/content/ContentResolver;
    sget-object v3, Landroid/provider/Settings$Secure;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v8, "value"

    const-string/jumbo v9, "name"

    filled-new-array {v9, v8}, [Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v1

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 206
    .local v2, "cursor":Landroid/database/Cursor;
    const/4 v3, 0x0

    if-eqz v2, :cond_8e

    :try_start_22
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-gtz v4, :cond_29

    goto :goto_8e

    .line 209
    :cond_29
    nop

    .line 210
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 211
    .local v4, "nameIndex":I
    nop

    .line 212
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 225
    .local v5, "valueIndex":I
    :goto_33
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_61

    .line 226
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 227
    .local v6, "name":Ljava/lang/String;
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 228
    .local v7, "value":Ljava/lang/String;
    const-string/jumbo v8, "usb_install_item_"

    invoke-virtual {v6, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_60

    .line 229
    if-eqz v7, :cond_5d

    .line 230
    const-string v8, "\\:"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 231
    .local v8, "valueArray":[Ljava/lang/String;
    const/4 v9, 0x1

    aget-object v9, v8, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    const/4 v10, -0x2

    if-ne v9, v10, :cond_5d

    .line 232
    goto :goto_33

    .line 235
    .end local v8  # "valueArray":[Ljava/lang/String;
    :cond_5d
    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_60} :catch_69
    .catchall {:try_start_22 .. :try_end_60} :catchall_67

    .line 237
    .end local v6  # "name":Ljava/lang/String;
    .end local v7  # "value":Ljava/lang/String;
    :cond_60
    goto :goto_33

    .line 239
    .end local v4  # "nameIndex":I
    .end local v5  # "valueIndex":I
    :cond_61
    nop

    .line 244
    nop

    .line 245
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 239
    return-object v0

    .line 244
    :catchall_67
    move-exception v3

    goto :goto_8a

    .line 240
    :catch_69
    move-exception v4

    .line 241
    .local v4, "e":Ljava/lang/Exception;
    :try_start_6a
    const-string v5, "UsbInstallManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SQLiteException"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_84
    .catchall {:try_start_6a .. :try_end_84} :catchall_67

    .line 242
    nop

    .line 244
    nop

    .line 245
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 242
    return-object v3

    .line 245
    .end local v4  # "e":Ljava/lang/Exception;
    :goto_8a
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    throw v3

    .line 207
    :cond_8e
    :goto_8e
    nop

    .line 244
    if-eqz v2, :cond_94

    .line 245
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 207
    :cond_94
    return-object v3
.end method

.method public getSwitchState()I
    .registers 4

    .line 191
    const-string/jumbo v0, "usb_install_item_switch"

    invoke-direct {p0, v0}, Lcom/android/server/hips/server/UsbInstallManager;->getStateFromSecure(Ljava/lang/String;)I

    move-result v1

    .line 192
    .local v1, "state":I
    const/4 v2, -0x3

    if-ne v1, v2, :cond_11

    .line 193
    const-string/jumbo v2, "usb_install_item_switch:1"

    invoke-static {v0, v2}, Lcom/android/server/hips/server/UsbInstallManager;->putIntoSecure(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    const/4 v1, 0x1

    .line 196
    :cond_11
    return v1
.end method

.method public isStopInstall(Ljava/lang/String;)I
    .registers 11
    .param p1, "apkPath"  # Ljava/lang/String;

    .line 111
    invoke-virtual {p0}, Lcom/android/server/hips/server/UsbInstallManager;->getSwitchState()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-ne v0, v1, :cond_9

    .line 112
    return v2

    .line 114
    :cond_9
    new-instance v0, Lcom/android/server/hips/server/UsbInstallManager$ArchiveInfo;

    sget-object v3, Lcom/android/server/hips/server/UsbInstallManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v3, p1}, Lcom/android/server/hips/server/UsbInstallManager$ArchiveInfo;-><init>(Lcom/android/server/hips/server/UsbInstallManager;Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/hips/server/UsbInstallManager;->mArchiveInfo:Lcom/android/server/hips/server/UsbInstallManager$ArchiveInfo;

    .line 115
    iget-object v0, p0, Lcom/android/server/hips/server/UsbInstallManager;->mArchiveInfo:Lcom/android/server/hips/server/UsbInstallManager$ArchiveInfo;

    iget-object v0, v0, Lcom/android/server/hips/server/UsbInstallManager$ArchiveInfo;->mPkgName:Ljava/lang/String;

    .line 116
    .local v0, "pkgName":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/hips/server/UsbInstallManager;->mArchiveInfo:Lcom/android/server/hips/server/UsbInstallManager$ArchiveInfo;

    iget-object v3, v3, Lcom/android/server/hips/server/UsbInstallManager$ArchiveInfo;->mApkName:Ljava/lang/String;

    .line 117
    .local v3, "apkName":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/hips/server/UsbInstallManager;->mArchiveInfo:Lcom/android/server/hips/server/UsbInstallManager$ArchiveInfo;

    iget-object v4, v4, Lcom/android/server/hips/server/UsbInstallManager$ArchiveInfo;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 119
    .local v4, "drawable":Landroid/graphics/drawable/Drawable;
    const-string v5, "error"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_b8

    const-string v5, "error"

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_30

    goto/16 :goto_b8

    .line 124
    :cond_30
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "usb_install_item_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 125
    .local v5, "key":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/server/hips/server/UsbInstallManager;->getAllItems()Ljava/util/Map;

    move-result-object v6

    .line 126
    .local v6, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v6, :cond_5d

    invoke-interface {v6, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5d

    .line 127
    invoke-direct {p0, v5}, Lcom/android/server/hips/server/UsbInstallManager;->getStateFromSecure(Ljava/lang/String;)I

    move-result v7

    .line 128
    .local v7, "mode":I
    if-ne v7, v2, :cond_55

    .line 129
    return v2

    .line 130
    :cond_55
    if-ne v7, v1, :cond_58

    .line 131
    return v1

    .line 133
    :cond_58
    const/4 v1, 0x0

    .line 134
    .end local v7  # "mode":I
    .local v1, "mode":I
    invoke-virtual {p0, v2, v0, v3, v1}, Lcom/android/server/hips/server/UsbInstallManager;->setUsbInstallItemState(ILjava/lang/String;Ljava/lang/String;I)V

    goto :goto_61

    .line 137
    .end local v1  # "mode":I
    :cond_5d
    const/4 v1, 0x0

    .line 138
    .restart local v1  # "mode":I
    invoke-virtual {p0, v2, v0, v3, v1}, Lcom/android/server/hips/server/UsbInstallManager;->setUsbInstallItemState(ILjava/lang/String;Ljava/lang/String;I)V

    .line 141
    :goto_61
    const-string v7, "/data/system/usb_install"

    invoke-direct {p0, v0, v7, v4}, Lcom/android/server/hips/server/UsbInstallManager;->saveApkIcon(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 143
    monitor-enter p0

    .line 144
    :try_start_67
    iput-boolean v2, p0, Lcom/android/server/hips/server/UsbInstallManager;->mIsDialogShowing:Z

    .line 145
    const/16 v7, 0x13

    iput v7, p0, Lcom/android/server/hips/server/UsbInstallManager;->mTime:I

    .line 146
    iget-object v7, p0, Lcom/android/server/hips/server/UsbInstallManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v7, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 147
    iget-object v2, p0, Lcom/android/server/hips/server/UsbInstallManager;->mHandler:Landroid/os/Handler;

    const/4 v7, 0x2

    invoke-virtual {v2, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_7c
    .catchall {:try_start_67 .. :try_end_7c} :catchall_b5

    .line 149
    const/4 v2, 0x0

    .line 150
    .local v2, "i":I
    :goto_7d
    :try_start_7d
    iget-boolean v7, p0, Lcom/android/server/hips/server/UsbInstallManager;->mIsDialogShowing:Z

    if-eqz v7, :cond_94

    if-nez v1, :cond_94

    const/16 v7, 0x5f

    if-ge v2, v7, :cond_94

    .line 151
    invoke-direct {p0, v5}, Lcom/android/server/hips/server/UsbInstallManager;->getStateFromSecure(Ljava/lang/String;)I

    move-result v7

    move v1, v7

    .line 152
    const-wide/16 v7, 0xc8

    invoke-virtual {p0, v7, v8}, Ljava/lang/Object;->wait(J)V
    :try_end_91
    .catch Ljava/lang/Exception; {:try_start_7d .. :try_end_91} :catch_9c
    .catchall {:try_start_7d .. :try_end_91} :catchall_9a

    .line 153
    add-int/lit8 v2, v2, 0x1

    goto :goto_7d

    .line 159
    .end local v2  # "i":I
    :cond_94
    :try_start_94
    invoke-direct {p0, v5}, Lcom/android/server/hips/server/UsbInstallManager;->getStateFromSecure(Ljava/lang/String;)I

    move-result v2
    :try_end_98
    .catchall {:try_start_94 .. :try_end_98} :catchall_b5

    :goto_98
    move v1, v2

    .line 160
    goto :goto_ad

    .line 159
    :catchall_9a
    move-exception v2

    goto :goto_af

    .line 155
    :catch_9c
    move-exception v2

    .line 156
    .local v2, "e":Ljava/lang/Exception;
    :try_start_9d
    const-string v7, "UsbInstallManager"

    const-string/jumbo v8, "isStopInstall: failed to hang up the process"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_a8
    .catchall {:try_start_9d .. :try_end_a8} :catchall_9a

    .line 159
    .end local v2  # "e":Ljava/lang/Exception;
    :try_start_a8
    invoke-direct {p0, v5}, Lcom/android/server/hips/server/UsbInstallManager;->getStateFromSecure(Ljava/lang/String;)I

    move-result v2

    goto :goto_98

    .line 161
    :goto_ad
    monitor-exit p0

    .line 162
    return v1

    .line 159
    :goto_af
    invoke-direct {p0, v5}, Lcom/android/server/hips/server/UsbInstallManager;->getStateFromSecure(Ljava/lang/String;)I

    move-result v7

    move v1, v7

    .end local v0  # "pkgName":Ljava/lang/String;
    .end local v1  # "mode":I
    .end local v3  # "apkName":Ljava/lang/String;
    .end local v4  # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v5  # "key":Ljava/lang/String;
    .end local v6  # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local p0  # "this":Lcom/android/server/hips/server/UsbInstallManager;
    .end local p1  # "apkPath":Ljava/lang/String;
    throw v2

    .line 161
    .restart local v0  # "pkgName":Ljava/lang/String;
    .restart local v1  # "mode":I
    .restart local v3  # "apkName":Ljava/lang/String;
    .restart local v4  # "drawable":Landroid/graphics/drawable/Drawable;
    .restart local v5  # "key":Ljava/lang/String;
    .restart local v6  # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local p0  # "this":Lcom/android/server/hips/server/UsbInstallManager;
    .restart local p1  # "apkPath":Ljava/lang/String;
    :catchall_b5
    move-exception v2

    monitor-exit p0
    :try_end_b7
    .catchall {:try_start_a8 .. :try_end_b7} :catchall_b5

    throw v2

    .line 120
    .end local v1  # "mode":I
    .end local v5  # "key":Ljava/lang/String;
    .end local v6  # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_b8
    :goto_b8
    return v1
.end method

.method public setSwitchState(Z)V
    .registers 4
    .param p1, "isOn"  # Z

    .line 183
    const-string/jumbo v0, "usb_install_item_switch"

    if-eqz p1, :cond_c

    .line 184
    const-string/jumbo v1, "usb_install_item_switch:1"

    invoke-static {v0, v1}, Lcom/android/server/hips/server/UsbInstallManager;->putIntoSecure(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_12

    .line 186
    :cond_c
    const-string/jumbo v1, "usb_install_item_switch:-1"

    invoke-static {v0, v1}, Lcom/android/server/hips/server/UsbInstallManager;->putIntoSecure(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    :goto_12
    return-void
.end method

.method public setUsbInstallItemState(ILjava/lang/String;Ljava/lang/String;I)V
    .registers 10
    .param p1, "type"  # I
    .param p2, "pkgName"  # Ljava/lang/String;
    .param p3, "apkName"  # Ljava/lang/String;
    .param p4, "mode"  # I

    .line 167
    const-string v0, ":"

    const-string/jumbo v1, "usb_install_item_"

    const/4 v2, 0x1

    if-ne p1, v2, :cond_2d

    .line 168
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 169
    .local v1, "key":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 170
    .local v0, "value":Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/android/server/hips/server/UsbInstallManager;->putIntoSecure(Ljava/lang/String;Ljava/lang/String;)V

    .end local v0  # "value":Ljava/lang/String;
    .end local v1  # "key":Ljava/lang/String;
    goto :goto_7a

    .line 171
    :cond_2d
    const/4 v2, 0x2

    if-ne p1, v2, :cond_7a

    .line 172
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 173
    .restart local v1  # "key":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, -0x2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 174
    .restart local v0  # "value":Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/android/server/hips/server/UsbInstallManager;->putIntoSecure(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/data/system/usb_install/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".png"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 176
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_7b

    .line 177
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto :goto_7b

    .line 171
    .end local v0  # "value":Ljava/lang/String;
    .end local v1  # "key":Ljava/lang/String;
    .end local v2  # "file":Ljava/io/File;
    :cond_7a
    :goto_7a
    nop

    .line 180
    :cond_7b
    :goto_7b
    return-void
.end method
