.class public Lcom/android/systemui/qs/external/CustomTile;
.super Lcom/android/systemui/qs/tileimpl/QSTileImpl;
.source "CustomTile.java"

# interfaces
.implements Lcom/android/systemui/qs/external/TileLifecycleManager$TileChangeListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/qs/tileimpl/QSTileImpl<",
        "Lcom/android/systemui/plugins/qs/QSTile$State;",
        ">;",
        "Lcom/android/systemui/qs/external/TileLifecycleManager$TileChangeListener;"
    }
.end annotation


# instance fields
.field private final mComponent:Landroid/content/ComponentName;

.field private mDefaultIcon:Landroid/graphics/drawable/Icon;

.field private mDefaultLabel:Ljava/lang/CharSequence;

.field private mIsShowingDialog:Z

.field private mIsTokenGranted:Z

.field private mListening:Z

.field private final mService:Landroid/service/quicksettings/IQSTileService;

.field private final mServiceManager:Lcom/android/systemui/qs/external/TileServiceManager;

.field private final mTile:Landroid/service/quicksettings/Tile;

.field private final mToken:Landroid/os/IBinder;

.field private final mUser:I

.field private final mWindowManager:Landroid/view/IWindowManager;


# direct methods
.method private constructor <init>(Lcom/android/systemui/qs/QSTileHost;Ljava/lang/String;)V
    .registers 4

    .line 79
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;-><init>(Lcom/android/systemui/qs/QSHost;)V

    .line 67
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/external/CustomTile;->mToken:Landroid/os/IBinder;

    .line 80
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/external/CustomTile;->mWindowManager:Landroid/view/IWindowManager;

    .line 81
    invoke-static {p2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/qs/external/CustomTile;->mComponent:Landroid/content/ComponentName;

    .line 82
    new-instance p2, Landroid/service/quicksettings/Tile;

    invoke-direct {p2}, Landroid/service/quicksettings/Tile;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/qs/external/CustomTile;->mTile:Landroid/service/quicksettings/Tile;

    .line 83
    invoke-direct {p0}, Lcom/android/systemui/qs/external/CustomTile;->updateDefaultTileAndIcon()V

    .line 84
    invoke-virtual {p1}, Lcom/android/systemui/qs/QSTileHost;->getTileServices()Lcom/android/systemui/qs/external/TileServices;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/systemui/qs/external/TileServices;->getTileWrapper(Lcom/android/systemui/qs/external/CustomTile;)Lcom/android/systemui/qs/external/TileServiceManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qs/external/CustomTile;->mServiceManager:Lcom/android/systemui/qs/external/TileServiceManager;

    .line 85
    iget-object p1, p0, Lcom/android/systemui/qs/external/CustomTile;->mServiceManager:Lcom/android/systemui/qs/external/TileServiceManager;

    invoke-virtual {p1}, Lcom/android/systemui/qs/external/TileServiceManager;->getTileService()Landroid/service/quicksettings/IQSTileService;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qs/external/CustomTile;->mService:Landroid/service/quicksettings/IQSTileService;

    .line 86
    iget-object p1, p0, Lcom/android/systemui/qs/external/CustomTile;->mServiceManager:Lcom/android/systemui/qs/external/TileServiceManager;

    invoke-virtual {p1, p0}, Lcom/android/systemui/qs/external/TileServiceManager;->setTileChangeListener(Lcom/android/systemui/qs/external/TileLifecycleManager$TileChangeListener;)V

    .line 87
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result p1

    iput p1, p0, Lcom/android/systemui/qs/external/CustomTile;->mUser:I

    return-void
.end method

.method public static create(Lcom/android/systemui/qs/QSTileHost;Ljava/lang/String;)Lcom/android/systemui/qs/external/CustomTile;
    .registers 4

    if-eqz p1, :cond_31

    const-string v0, "custom("

    .line 368
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_31

    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_31

    const/4 v0, 0x7

    .line 371
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 372
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_29

    .line 375
    new-instance v0, Lcom/android/systemui/qs/external/CustomTile;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/qs/external/CustomTile;-><init>(Lcom/android/systemui/qs/QSTileHost;Ljava/lang/String;)V

    return-object v0

    .line 373
    :cond_29
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Empty custom tile spec action"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 369
    :cond_31
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bad custom tile spec: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getComponentFromSpec(Ljava/lang/String;)Landroid/content/ComponentName;
    .registers 3

    .line 360
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x7

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 361
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_16

    .line 364
    invoke-static {p0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p0

    return-object p0

    .line 362
    :cond_16
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Empty custom tile spec action"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private iconEquals(Landroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;)Z
    .registers 6

    const/4 p0, 0x1

    if-ne p1, p2, :cond_4

    return p0

    :cond_4
    const/4 v0, 0x0

    if-eqz p1, :cond_33

    if-nez p2, :cond_a

    goto :goto_33

    .line 142
    :cond_a
    invoke-virtual {p1}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_33

    .line 143
    invoke-virtual {p2}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v1

    if-eq v1, v2, :cond_18

    goto :goto_33

    .line 146
    :cond_18
    invoke-virtual {p1}, Landroid/graphics/drawable/Icon;->getResId()I

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/drawable/Icon;->getResId()I

    move-result v2

    if-eq v1, v2, :cond_23

    return v0

    .line 149
    :cond_23
    invoke-virtual {p1}, Landroid/graphics/drawable/Icon;->getResPackage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/graphics/drawable/Icon;->getResPackage()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_32

    return v0

    :cond_32
    return p0

    :cond_33
    :goto_33
    return v0
.end method

.method private isSystemApp(Landroid/content/pm/PackageManager;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 128
    iget-object p0, p0, Lcom/android/systemui/qs/external/CustomTile;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$handleUpdateState$0(Landroid/graphics/drawable/Drawable;)Lcom/android/systemui/plugins/qs/QSTile$Icon;
    .registers 2

    .line 319
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p0

    if-eqz p0, :cond_10

    .line 321
    new-instance v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$DrawableIcon;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$DrawableIcon;-><init>(Landroid/graphics/drawable/Drawable;)V

    return-object v0

    :cond_10
    const/4 p0, 0x0

    return-object p0
.end method

.method private resolveIntent(Landroid/content/Intent;)Landroid/content/Intent;
    .registers 4

    .line 268
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 269
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    const/4 v1, 0x0

    .line 268
    invoke-virtual {p0, p1, v1, v0}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    move-result-object p0

    if-eqz p0, :cond_25

    .line 271
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.service.quicksettings.action.QS_TILE_PREFERENCES"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {p1, v0, p0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    goto :goto_26

    :cond_25
    const/4 p0, 0x0

    :goto_26
    return-object p0
.end method

.method public static toSpec(Landroid/content/ComponentName;)Ljava/lang/String;
    .registers 3

    .line 356
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "custom("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private updateDefaultTileAndIcon()V
    .registers 9

    const/4 v0, 0x0

    .line 97
    :try_start_1
    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/high16 v2, 0xc0000

    .line 99
    invoke-direct {p0, v1}, Lcom/android/systemui/qs/external/CustomTile;->isSystemApp(Landroid/content/pm/PackageManager;)Z

    move-result v3

    if-eqz v3, :cond_12

    const v2, 0xc0200

    .line 103
    :cond_12
    iget-object v3, p0, Lcom/android/systemui/qs/external/CustomTile;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v1, v3, v2}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v2

    .line 104
    iget v3, v2, Landroid/content/pm/ServiceInfo;->icon:I

    if-eqz v3, :cond_1f

    iget v3, v2, Landroid/content/pm/ServiceInfo;->icon:I

    goto :goto_23

    .line 105
    :cond_1f
    iget-object v3, v2, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->icon:I

    .line 107
    :goto_23
    iget-object v4, p0, Lcom/android/systemui/qs/external/CustomTile;->mTile:Landroid/service/quicksettings/Tile;

    invoke-virtual {v4}, Landroid/service/quicksettings/Tile;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_3e

    iget-object v4, p0, Lcom/android/systemui/qs/external/CustomTile;->mTile:Landroid/service/quicksettings/Tile;

    .line 108
    invoke-virtual {v4}, Landroid/service/quicksettings/Tile;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v4

    iget-object v7, p0, Lcom/android/systemui/qs/external/CustomTile;->mDefaultIcon:Landroid/graphics/drawable/Icon;

    invoke-direct {p0, v4, v7}, Lcom/android/systemui/qs/external/CustomTile;->iconEquals(Landroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;)Z

    move-result v4

    if-eqz v4, :cond_3c

    goto :goto_3e

    :cond_3c
    move v4, v5

    goto :goto_3f

    :cond_3e
    :goto_3e
    move v4, v6

    :goto_3f
    if-eqz v3, :cond_4c

    .line 110
    iget-object v7, p0, Lcom/android/systemui/qs/external/CustomTile;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v3}, Landroid/graphics/drawable/Icon;->createWithResource(Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    move-result-object v3

    goto :goto_4d

    :cond_4c
    move-object v3, v0

    :goto_4d
    iput-object v3, p0, Lcom/android/systemui/qs/external/CustomTile;->mDefaultIcon:Landroid/graphics/drawable/Icon;

    if-eqz v4, :cond_58

    .line 112
    iget-object v3, p0, Lcom/android/systemui/qs/external/CustomTile;->mTile:Landroid/service/quicksettings/Tile;

    iget-object v4, p0, Lcom/android/systemui/qs/external/CustomTile;->mDefaultIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v3, v4}, Landroid/service/quicksettings/Tile;->setIcon(Landroid/graphics/drawable/Icon;)V

    .line 115
    :cond_58
    iget-object v3, p0, Lcom/android/systemui/qs/external/CustomTile;->mTile:Landroid/service/quicksettings/Tile;

    invoke-virtual {v3}, Landroid/service/quicksettings/Tile;->getLabel()Ljava/lang/CharSequence;

    move-result-object v3

    if-eqz v3, :cond_6e

    iget-object v3, p0, Lcom/android/systemui/qs/external/CustomTile;->mTile:Landroid/service/quicksettings/Tile;

    .line 116
    invoke-virtual {v3}, Landroid/service/quicksettings/Tile;->getLabel()Ljava/lang/CharSequence;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/qs/external/CustomTile;->mDefaultLabel:Ljava/lang/CharSequence;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6f

    :cond_6e
    move v5, v6

    .line 117
    :cond_6f
    invoke-virtual {v2, v1}, Landroid/content/pm/ServiceInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/qs/external/CustomTile;->mDefaultLabel:Ljava/lang/CharSequence;

    if-eqz v5, :cond_83

    .line 119
    iget-object v1, p0, Lcom/android/systemui/qs/external/CustomTile;->mTile:Landroid/service/quicksettings/Tile;

    iget-object v2, p0, Lcom/android/systemui/qs/external/CustomTile;->mDefaultLabel:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/service/quicksettings/Tile;->setLabel(Ljava/lang/CharSequence;)V
    :try_end_7e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_7e} :catch_7f

    goto :goto_83

    .line 122
    :catch_7f
    iput-object v0, p0, Lcom/android/systemui/qs/external/CustomTile;->mDefaultIcon:Landroid/graphics/drawable/Icon;

    .line 123
    iput-object v0, p0, Lcom/android/systemui/qs/external/CustomTile;->mDefaultLabel:Ljava/lang/CharSequence;

    :cond_83
    :goto_83
    return-void
.end method


# virtual methods
.method public getComponent()Landroid/content/ComponentName;
    .registers 1

    .line 170
    iget-object p0, p0, Lcom/android/systemui/qs/external/CustomTile;->mComponent:Landroid/content/ComponentName;

    return-object p0
.end method

.method public getLongClickIntent()Landroid/content/Intent;
    .registers 4

    .line 255
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.service.quicksettings.action.QS_TILE_PREFERENCES"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 256
    iget-object v1, p0, Lcom/android/systemui/qs/external/CustomTile;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 257
    invoke-direct {p0, v0}, Lcom/android/systemui/qs/external/CustomTile;->resolveIntent(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_2a

    .line 259
    iget-object v1, p0, Lcom/android/systemui/qs/external/CustomTile;->mComponent:Landroid/content/ComponentName;

    const-string v2, "android.intent.extra.COMPONENT_NAME"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 260
    iget-object p0, p0, Lcom/android/systemui/qs/external/CustomTile;->mTile:Landroid/service/quicksettings/Tile;

    invoke-virtual {p0}, Landroid/service/quicksettings/Tile;->getState()I

    move-result p0

    const-string/jumbo v1, "state"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-object v0

    .line 263
    :cond_2a
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/qs/external/CustomTile;->mComponent:Landroid/content/ComponentName;

    .line 264
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    const-string v2, "package"

    invoke-static {v2, p0, v1}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    .line 263
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public getMetricsCategory()I
    .registers 1

    const/16 p0, 0x10c

    return p0
.end method

.method public getQsTile()Landroid/service/quicksettings/Tile;
    .registers 1

    .line 179
    invoke-direct {p0}, Lcom/android/systemui/qs/external/CustomTile;->updateDefaultTileAndIcon()V

    .line 180
    iget-object p0, p0, Lcom/android/systemui/qs/external/CustomTile;->mTile:Landroid/service/quicksettings/Tile;

    return-object p0
.end method

.method protected getStaleTimeout()J
    .registers 5

    .line 92
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mHost:Lcom/android/systemui/qs/QSHost;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->getTileSpec()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/android/systemui/qs/QSHost;->indexOf(Ljava/lang/String;)I

    move-result p0

    int-to-long v0, p0

    const-wide/32 v2, 0xea60

    mul-long/2addr v0, v2

    const-wide/32 v2, 0x36ee80

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public getTileLabel()Ljava/lang/CharSequence;
    .registers 1

    .line 298
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->getState()Lcom/android/systemui/plugins/qs/QSTile$State;

    move-result-object p0

    iget-object p0, p0, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public getUser()I
    .registers 1

    .line 166
    iget p0, p0, Lcom/android/systemui/qs/external/CustomTile;->mUser:I

    return p0
.end method

.method protected handleClick()V
    .registers 6

    .line 276
    iget-object v0, p0, Lcom/android/systemui/qs/external/CustomTile;->mTile:Landroid/service/quicksettings/Tile;

    invoke-virtual {v0}, Landroid/service/quicksettings/Tile;->getState()I

    move-result v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    const/4 v0, 0x1

    .line 281
    :try_start_a
    iget-object v1, p0, Lcom/android/systemui/qs/external/CustomTile;->mWindowManager:Landroid/view/IWindowManager;

    iget-object v2, p0, Lcom/android/systemui/qs/external/CustomTile;->mToken:Landroid/os/IBinder;

    const/16 v3, 0x7f3

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, Landroid/view/IWindowManager;->addWindowToken(Landroid/os/IBinder;II)V

    .line 282
    iput-boolean v0, p0, Lcom/android/systemui/qs/external/CustomTile;->mIsTokenGranted:Z
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_16} :catch_16

    .line 286
    :catch_16
    :try_start_16
    iget-object v1, p0, Lcom/android/systemui/qs/external/CustomTile;->mServiceManager:Lcom/android/systemui/qs/external/TileServiceManager;

    invoke-virtual {v1}, Lcom/android/systemui/qs/external/TileServiceManager;->isActiveTile()Z

    move-result v1

    if-eqz v1, :cond_28

    .line 287
    iget-object v1, p0, Lcom/android/systemui/qs/external/CustomTile;->mServiceManager:Lcom/android/systemui/qs/external/TileServiceManager;

    invoke-virtual {v1, v0}, Lcom/android/systemui/qs/external/TileServiceManager;->setBindRequested(Z)V

    .line 288
    iget-object v0, p0, Lcom/android/systemui/qs/external/CustomTile;->mService:Landroid/service/quicksettings/IQSTileService;

    invoke-interface {v0}, Landroid/service/quicksettings/IQSTileService;->onStartListening()V

    .line 290
    :cond_28
    iget-object v0, p0, Lcom/android/systemui/qs/external/CustomTile;->mService:Landroid/service/quicksettings/IQSTileService;

    iget-object p0, p0, Lcom/android/systemui/qs/external/CustomTile;->mToken:Landroid/os/IBinder;

    invoke-interface {v0, p0}, Landroid/service/quicksettings/IQSTileService;->onClick(Landroid/os/IBinder;)V
    :try_end_2f
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_2f} :catch_2f

    :catch_2f
    return-void
.end method

.method protected handleDestroy()V
    .registers 4

    .line 236
    invoke-super {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleDestroy()V

    .line 237
    iget-boolean v0, p0, Lcom/android/systemui/qs/external/CustomTile;->mIsTokenGranted:Z

    if-eqz v0, :cond_f

    .line 240
    :try_start_7
    iget-object v0, p0, Lcom/android/systemui/qs/external/CustomTile;->mWindowManager:Landroid/view/IWindowManager;

    iget-object v1, p0, Lcom/android/systemui/qs/external/CustomTile;->mToken:Landroid/os/IBinder;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/view/IWindowManager;->removeWindowToken(Landroid/os/IBinder;I)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_f} :catch_f

    .line 244
    :catch_f
    :cond_f
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mHost:Lcom/android/systemui/qs/QSHost;

    invoke-interface {v0}, Lcom/android/systemui/qs/QSHost;->getTileServices()Lcom/android/systemui/qs/external/TileServices;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/external/CustomTile;->mServiceManager:Lcom/android/systemui/qs/external/TileServiceManager;

    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/qs/external/TileServices;->freeService(Lcom/android/systemui/qs/external/CustomTile;Lcom/android/systemui/qs/external/TileServiceManager;)V

    return-void
.end method

.method public handleSetListening(Z)V
    .registers 4

    .line 206
    iget-boolean v0, p0, Lcom/android/systemui/qs/external/CustomTile;->mListening:Z

    if-ne v0, p1, :cond_5

    return-void

    .line 207
    :cond_5
    iput-boolean p1, p0, Lcom/android/systemui/qs/external/CustomTile;->mListening:Z

    if-eqz p1, :cond_23

    .line 210
    :try_start_9
    invoke-direct {p0}, Lcom/android/systemui/qs/external/CustomTile;->updateDefaultTileAndIcon()V

    .line 211
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState()V

    .line 212
    iget-object p1, p0, Lcom/android/systemui/qs/external/CustomTile;->mServiceManager:Lcom/android/systemui/qs/external/TileServiceManager;

    invoke-virtual {p1}, Lcom/android/systemui/qs/external/TileServiceManager;->isActiveTile()Z

    move-result p1

    if-nez p1, :cond_41

    .line 213
    iget-object p1, p0, Lcom/android/systemui/qs/external/CustomTile;->mServiceManager:Lcom/android/systemui/qs/external/TileServiceManager;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/systemui/qs/external/TileServiceManager;->setBindRequested(Z)V

    .line 214
    iget-object p0, p0, Lcom/android/systemui/qs/external/CustomTile;->mService:Landroid/service/quicksettings/IQSTileService;

    invoke-interface {p0}, Landroid/service/quicksettings/IQSTileService;->onStartListening()V

    goto :goto_41

    .line 217
    :cond_23
    iget-object p1, p0, Lcom/android/systemui/qs/external/CustomTile;->mService:Landroid/service/quicksettings/IQSTileService;

    invoke-interface {p1}, Landroid/service/quicksettings/IQSTileService;->onStopListening()V

    .line 218
    iget-boolean p1, p0, Lcom/android/systemui/qs/external/CustomTile;->mIsTokenGranted:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_3a

    iget-boolean p1, p0, Lcom/android/systemui/qs/external/CustomTile;->mIsShowingDialog:Z
    :try_end_2f
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_2f} :catch_41

    if-nez p1, :cond_3a

    .line 221
    :try_start_31
    iget-object p1, p0, Lcom/android/systemui/qs/external/CustomTile;->mWindowManager:Landroid/view/IWindowManager;

    iget-object v1, p0, Lcom/android/systemui/qs/external/CustomTile;->mToken:Landroid/os/IBinder;

    invoke-interface {p1, v1, v0}, Landroid/view/IWindowManager;->removeWindowToken(Landroid/os/IBinder;I)V
    :try_end_38
    .catch Landroid/os/RemoteException; {:try_start_31 .. :try_end_38} :catch_38

    .line 224
    :catch_38
    :try_start_38
    iput-boolean v0, p0, Lcom/android/systemui/qs/external/CustomTile;->mIsTokenGranted:Z

    .line 226
    :cond_3a
    iput-boolean v0, p0, Lcom/android/systemui/qs/external/CustomTile;->mIsShowingDialog:Z

    .line 227
    iget-object p0, p0, Lcom/android/systemui/qs/external/CustomTile;->mServiceManager:Lcom/android/systemui/qs/external/TileServiceManager;

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/external/TileServiceManager;->setBindRequested(Z)V
    :try_end_41
    .catch Landroid/os/RemoteException; {:try_start_38 .. :try_end_41} :catch_41

    :catch_41
    :cond_41
    :goto_41
    return-void
.end method

.method protected handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$State;Ljava/lang/Object;)V
    .registers 5

    .line 303
    iget-object p2, p0, Lcom/android/systemui/qs/external/CustomTile;->mTile:Landroid/service/quicksettings/Tile;

    invoke-virtual {p2}, Landroid/service/quicksettings/Tile;->getState()I

    move-result p2

    .line 304
    iget-object v0, p0, Lcom/android/systemui/qs/external/CustomTile;->mServiceManager:Lcom/android/systemui/qs/external/TileServiceManager;

    invoke-virtual {v0}, Lcom/android/systemui/qs/external/TileServiceManager;->hasPendingBind()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_10

    move p2, v1

    .line 307
    :cond_10
    iput p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    .line 310
    :try_start_12
    iget-object p2, p0, Lcom/android/systemui/qs/external/CustomTile;->mTile:Landroid/service/quicksettings/Tile;

    invoke-virtual {p2}, Landroid/service/quicksettings/Tile;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object p2

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p2, v0}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p2
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_1e} :catch_1f

    goto :goto_30

    .line 312
    :catch_1f
    iget-object p2, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    const-string v0, "Invalid icon, forcing into unavailable state"

    invoke-static {p2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    iput v1, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    .line 314
    iget-object p2, p0, Lcom/android/systemui/qs/external/CustomTile;->mDefaultIcon:Landroid/graphics/drawable/Icon;

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p2, v0}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 318
    :goto_30
    new-instance v0, Lcom/android/systemui/qs/external/-$$Lambda$CustomTile$Oh-NzDEMM2yCWnVYbU2_DKTzaqo;

    invoke-direct {v0, p2}, Lcom/android/systemui/qs/external/-$$Lambda$CustomTile$Oh-NzDEMM2yCWnVYbU2_DKTzaqo;-><init>(Landroid/graphics/drawable/Drawable;)V

    iput-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->iconSupplier:Ljava/util/function/Supplier;

    .line 325
    iget-object p2, p0, Lcom/android/systemui/qs/external/CustomTile;->mTile:Landroid/service/quicksettings/Tile;

    invoke-virtual {p2}, Landroid/service/quicksettings/Tile;->getLabel()Ljava/lang/CharSequence;

    move-result-object p2

    iput-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    .line 327
    iget-object p2, p0, Lcom/android/systemui/qs/external/CustomTile;->mTile:Landroid/service/quicksettings/Tile;

    invoke-virtual {p2}, Landroid/service/quicksettings/Tile;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object p2

    if-eqz p2, :cond_50

    .line 328
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_50

    .line 329
    iput-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->secondaryLabel:Ljava/lang/CharSequence;

    goto :goto_53

    :cond_50
    const/4 p2, 0x0

    .line 331
    iput-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->secondaryLabel:Ljava/lang/CharSequence;

    .line 334
    :goto_53
    iget-object p2, p0, Lcom/android/systemui/qs/external/CustomTile;->mTile:Landroid/service/quicksettings/Tile;

    invoke-virtual {p2}, Landroid/service/quicksettings/Tile;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object p2

    if-eqz p2, :cond_64

    .line 335
    iget-object p0, p0, Lcom/android/systemui/qs/external/CustomTile;->mTile:Landroid/service/quicksettings/Tile;

    invoke-virtual {p0}, Landroid/service/quicksettings/Tile;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object p0

    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->contentDescription:Ljava/lang/CharSequence;

    goto :goto_68

    .line 337
    :cond_64
    iget-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->contentDescription:Ljava/lang/CharSequence;

    :goto_68
    return-void
.end method

.method public isAvailable()Z
    .registers 1

    .line 162
    iget-object p0, p0, Lcom/android/systemui/qs/external/CustomTile;->mDefaultIcon:Landroid/graphics/drawable/Icon;

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public synthetic lambda$startUnlockAndRun$1$CustomTile()V
    .registers 1

    .line 349
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/qs/external/CustomTile;->mService:Landroid/service/quicksettings/IQSTileService;

    invoke-interface {p0}, Landroid/service/quicksettings/IQSTileService;->onUnlockComplete()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_5

    :catch_5
    return-void
.end method

.method public newTileState()Lcom/android/systemui/plugins/qs/QSTile$State;
    .registers 1

    .line 249
    new-instance p0, Lcom/android/systemui/plugins/qs/QSTile$State;

    invoke-direct {p0}, Lcom/android/systemui/plugins/qs/QSTile$State;-><init>()V

    return-object p0
.end method

.method public onDialogHidden()V
    .registers 3

    const/4 v0, 0x0

    .line 196
    iput-boolean v0, p0, Lcom/android/systemui/qs/external/CustomTile;->mIsShowingDialog:Z

    .line 199
    :try_start_3
    iget-object v1, p0, Lcom/android/systemui/qs/external/CustomTile;->mWindowManager:Landroid/view/IWindowManager;

    iget-object p0, p0, Lcom/android/systemui/qs/external/CustomTile;->mToken:Landroid/os/IBinder;

    invoke-interface {v1, p0, v0}, Landroid/view/IWindowManager;->removeWindowToken(Landroid/os/IBinder;I)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_a} :catch_a

    :catch_a
    return-void
.end method

.method public onDialogShown()V
    .registers 2

    const/4 v0, 0x1

    .line 192
    iput-boolean v0, p0, Lcom/android/systemui/qs/external/CustomTile;->mIsShowingDialog:Z

    return-void
.end method

.method public onTileChanged(Landroid/content/ComponentName;)V
    .registers 2

    .line 157
    invoke-direct {p0}, Lcom/android/systemui/qs/external/CustomTile;->updateDefaultTileAndIcon()V

    return-void
.end method

.method public populate(Landroid/metrics/LogMaker;)Landroid/metrics/LogMaker;
    .registers 2

    .line 175
    invoke-super {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->populate(Landroid/metrics/LogMaker;)Landroid/metrics/LogMaker;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/qs/external/CustomTile;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {p1, p0}, Landroid/metrics/LogMaker;->setComponentName(Landroid/content/ComponentName;)Landroid/metrics/LogMaker;

    move-result-object p0

    return-object p0
.end method

.method public startUnlockAndRun()V
    .registers 3

    .line 347
    const-class v0, Lcom/android/systemui/plugins/ActivityStarter;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/ActivityStarter;

    new-instance v1, Lcom/android/systemui/qs/external/-$$Lambda$CustomTile$q1MKWZaaapZOjYFe9CyeyabLR0Q;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/external/-$$Lambda$CustomTile$q1MKWZaaapZOjYFe9CyeyabLR0Q;-><init>(Lcom/android/systemui/qs/external/CustomTile;)V

    invoke-interface {v0, v1}, Lcom/android/systemui/plugins/ActivityStarter;->postQSRunnableDismissingKeyguard(Ljava/lang/Runnable;)V

    return-void
.end method

.method public updateState(Landroid/service/quicksettings/Tile;)V
    .registers 4

    .line 184
    iget-object v0, p0, Lcom/android/systemui/qs/external/CustomTile;->mTile:Landroid/service/quicksettings/Tile;

    invoke-virtual {p1}, Landroid/service/quicksettings/Tile;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/service/quicksettings/Tile;->setIcon(Landroid/graphics/drawable/Icon;)V

    .line 185
    iget-object v0, p0, Lcom/android/systemui/qs/external/CustomTile;->mTile:Landroid/service/quicksettings/Tile;

    invoke-virtual {p1}, Landroid/service/quicksettings/Tile;->getLabel()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/service/quicksettings/Tile;->setLabel(Ljava/lang/CharSequence;)V

    .line 186
    iget-object v0, p0, Lcom/android/systemui/qs/external/CustomTile;->mTile:Landroid/service/quicksettings/Tile;

    invoke-virtual {p1}, Landroid/service/quicksettings/Tile;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/service/quicksettings/Tile;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 187
    iget-object v0, p0, Lcom/android/systemui/qs/external/CustomTile;->mTile:Landroid/service/quicksettings/Tile;

    invoke-virtual {p1}, Landroid/service/quicksettings/Tile;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/service/quicksettings/Tile;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 188
    iget-object p0, p0, Lcom/android/systemui/qs/external/CustomTile;->mTile:Landroid/service/quicksettings/Tile;

    invoke-virtual {p1}, Landroid/service/quicksettings/Tile;->getState()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/service/quicksettings/Tile;->setState(I)V

    return-void
.end method
