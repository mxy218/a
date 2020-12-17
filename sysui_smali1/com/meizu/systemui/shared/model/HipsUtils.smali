.class public Lcom/meizu/systemui/shared/model/HipsUtils;
.super Ljava/lang/Object;
.source "HipsUtils.java"


# static fields
.field private static final CTS_APK_SIGNATURE:Ljava/lang/String; = "308204a830820390a003020102020900936eacbe07f201df300d06092a864886f70d0101050500308194310b3009060355040613025553311330110603550408130a43616c69666f726e6961311630140603550407130d4d6f756e7461696e20566965773110300e060355040a1307416e64726f69643110300e060355040b1307416e64726f69643110300e06035504031307416e64726f69643122302006092a864886f70d0109011613616e64726f696440616e64726f69642e636f6d301e170d3038303232393031333334365a170d3335303731373031333334365a308194310b3009060355040613025553311330110603550408130a43616c69666f726e6961311630140603550407130d4d6f756e7461696e20566965773110300e060355040a1307416e64726f69643110300e060355040b1307416e64726f69643110300e06035504031307416e64726f69643122302006092a864886f70d0109011613616e64726f696440616e64726f69642e636f6d30820120300d06092a864886f70d01010105000382010d00308201080282010100d6931904dec60b24b1edc762e0d9d8253e3ecd6ceb1de2ff068ca8e8bca8cd6bd3786ea70aa76ce60ebb0f993559ffd93e77a943e7e83d4b64b8e4fea2d3e656f1e267a81bbfb230b578c20443be4c7218b846f5211586f038a14e89c2be387f8ebecf8fcac3da1ee330c9ea93d0a7c3dc4af350220d50080732e0809717ee6a053359e6a694ec2cb3f284a0a466c87a94d83b31093a67372e2f6412c06e6d42f15818dffe0381cc0cd444da6cddc3b82458194801b32564134fbfde98c9287748dbf5676a540d8154c8bbca07b9e247553311c46b9af76fdeeccc8e69e7c8a2d08e782620943f99727d3c04fe72991d99df9bae38a0b2177fa31d5b6afee91f020103a381fc3081f9301d0603551d0e04160414485900563d272c46ae118605a47419ac09ca8c113081c90603551d230481c13081be8014485900563d272c46ae118605a47419ac09ca8c11a1819aa48197308194310b3009060355040613025553311330110603550408130a43616c69666f726e6961311630140603550407130d4d6f756e7461696e20566965773110300e060355040a1307416e64726f69643110300e060355040b1307416e64726f69643110300e06035504031307416e64726f69643122302006092a864886f70d0109011613616e64726f696440616e64726f69642e636f6d820900936eacbe07f201df300c0603551d13040530030101ff300d06092a864886f70d010105050003820101007aaf968ceb50c441055118d0daabaf015b8a765a27a715a2c2b44f221415ffdace03095abfa42df70708726c2069e5c36eddae0400be29452c084bc27eb6a17eac9dbe182c204eb15311f455d824b656dbe4dc2240912d7586fe88951d01a8feb5ae5a4260535df83431052422468c36e22c2a5ef994d61dd7306ae4c9f6951ba3c12f1d1914ddc61f1a62da2df827f603fea5603b2c540dbd7c019c36bab29a4271c117df523cdbc5f3817a49e0efa60cbd7f74177e7a4f193d43f4220772666e4c4d83e1bd5a86087cf34f2dec21e245ca6c2bb016e683638050d2c430eea7c26a1c49d3760a58ab7f1a82cc938b4831384324bd0401fa12163a50570e684d"

.field private static final CTS_TAG_CTS:Ljava/lang/String; = ".cts"

.field private static final CTS_TAG_GTS:Ljava/lang/String; = ".gts"

.field private static final TAG:Ljava/lang/String; = "HipsUtils"

.field private static final mDataSync:Ljava/lang/Object;

.field private static mHasSystemSignaturePkgs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final mIOSync:Ljava/lang/Object;

.field private static mInstalledPkgs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mSystemPkgs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mSystemSignature:[Landroid/content/pm/Signature;

.field private static mUsageStatsProxy:Landroid/nonvccUsageStats/UsageStatsNonVccProxy3;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/meizu/systemui/shared/model/HipsUtils;->mSystemPkgs:Ljava/util/ArrayList;

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/meizu/systemui/shared/model/HipsUtils;->mHasSystemSignaturePkgs:Ljava/util/ArrayList;

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/meizu/systemui/shared/model/HipsUtils;->mInstalledPkgs:Ljava/util/ArrayList;

    .line 81
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/meizu/systemui/shared/model/HipsUtils;->mDataSync:Ljava/lang/Object;

    .line 82
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/meizu/systemui/shared/model/HipsUtils;->mIOSync:Ljava/lang/Object;

    .line 85
    invoke-static {}, Lcom/meizu/systemui/shared/model/HipsUtils;->initInstalledPkg()V

    .line 86
    invoke-static {}, Lcom/meizu/systemui/shared/model/HipsUtils;->initSystemAndSystemSignaturePkg()V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static changeDefaultSMS(Ljava/lang/String;)V
    .registers 2

    .line 350
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    .line 351
    invoke-static {p0, v0}, Lcom/android/internal/telephony/SmsApplication;->setDefaultApplication(Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method

.method public static changeInputMethod(Ljava/lang/String;)V
    .registers 3

    .line 377
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_12

    const/4 v1, 0x0

    .line 381
    invoke-virtual {v0, v1, p0}, Landroid/view/inputmethod/InputMethodManager;->setInputMethod(Landroid/os/IBinder;Ljava/lang/String;)V

    :cond_12
    return-void
.end method

.method private static compareSignature([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)I
    .registers 7

    if-nez p0, :cond_8

    if-nez p1, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, -0x1

    :goto_7
    return p0

    :cond_8
    if-nez p1, :cond_c

    const/4 p0, -0x2

    return p0

    .line 597
    :cond_c
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 598
    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_14
    if-ge v3, v1, :cond_1e

    aget-object v4, p0, v3

    .line 599
    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    .line 601
    :cond_1e
    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    .line 602
    array-length v1, p1

    move v3, v2

    :goto_25
    if-ge v3, v1, :cond_2f

    aget-object v4, p1, v3

    .line 603
    invoke-virtual {p0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_25

    .line 606
    :cond_2f
    invoke-virtual {v0, p0}, Ljava/util/HashSet;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_36

    return v2

    :cond_36
    const/4 p0, -0x3

    return p0
.end method

.method public static getDefaultLauncherPkgName()Ljava/lang/String;
    .registers 4

    .line 322
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    .line 323
    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, ""

    if-nez v0, :cond_d

    return-object v1

    .line 329
    :cond_d
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "android.intent.category.HOME"

    .line 330
    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v3, 0x0

    .line 331
    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    if-nez v0, :cond_21

    return-object v1

    .line 336
    :cond_21
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-nez v0, :cond_26

    return-object v1

    .line 341
    :cond_26
    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    if-nez v0, :cond_2b

    return-object v1

    :cond_2b
    return-object v0
.end method

.method private static getSignaturedApkInfo(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;
    .registers 5

    const/4 v0, 0x0

    const-string v1, "HipsUtils"

    if-eqz p1, :cond_27

    .line 638
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_c

    goto :goto_27

    :cond_c
    if-nez p0, :cond_14

    const-string p0, "getSignaturedApkInfo, the context is null, return null."

    .line 643
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 646
    :cond_14
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    if-nez p0, :cond_20

    const-string p0, "getSignaturedApkInfo, the pkgManager is null, return null."

    .line 648
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_20
    const/16 v0, 0x40

    .line 651
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    return-object p0

    :cond_27
    :goto_27
    const-string p0, "getSignaturedApkInfo, the apkPath is null or empty, return null."

    .line 639
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public static getTopActivityName()Landroid/content/ComponentName;
    .registers 3

    .line 356
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "activity"

    .line 357
    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    const/4 v1, 0x0

    if-nez v0, :cond_10

    return-object v1

    :cond_10
    const/4 v2, 0x1

    .line 362
    invoke-virtual {v0, v2}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2b

    .line 363
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1e

    goto :goto_2b

    :cond_1e
    const/4 v2, 0x0

    .line 367
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    if-nez v0, :cond_28

    return-object v1

    .line 372
    :cond_28
    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    return-object v0

    :cond_2b
    :goto_2b
    return-object v1
.end method

.method public static getUidByPkgName(Ljava/lang/String;)I
    .registers 4

    .line 305
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    .line 306
    invoke-virtual {v0}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, -0x1

    if-eqz v0, :cond_2c

    const/4 v2, 0x1

    .line 309
    :try_start_c
    invoke-virtual {v0, p0, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-eqz v0, :cond_2c

    .line 312
    iget p0, v0, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_14} :catch_16

    move v1, p0

    goto :goto_2c

    .line 315
    :catch_16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to get App info for pkg: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "HipsUtils"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2c
    :goto_2c
    return v1
.end method

.method public static getValueFromSettings(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const-string v0, ""

    if-eqz p0, :cond_22

    .line 139
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_b

    goto :goto_22

    .line 143
    :cond_b
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v1

    if-nez v1, :cond_12

    return-object v0

    .line 151
    :cond_12
    :try_start_12
    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, p0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_1a} :catch_1b

    goto :goto_22

    :catch_1b
    const-string p0, "HipsUtils"

    const-string v1, "getValueFromSettings, unable to get value from settings!"

    .line 153
    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_22
    :goto_22
    return-object v0
.end method

.method private static initInstalledPkg()V
    .registers 4

    .line 277
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 278
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v1

    .line 279
    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    if-eqz v1, :cond_3e

    const/4 v2, 0x0

    .line 281
    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_3e

    .line 282
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_3e

    .line 283
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_20
    :goto_20
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInfo;

    if-nez v2, :cond_2f

    goto :goto_20

    .line 288
    :cond_2f
    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    if-eqz v2, :cond_20

    .line 289
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_3a

    goto :goto_20

    .line 293
    :cond_3a
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_20

    .line 298
    :cond_3e
    sget-object v1, Lcom/meizu/systemui/shared/model/HipsUtils;->mDataSync:Ljava/lang/Object;

    monitor-enter v1

    .line 299
    :try_start_41
    sput-object v0, Lcom/meizu/systemui/shared/model/HipsUtils;->mInstalledPkgs:Ljava/util/ArrayList;

    .line 300
    monitor-exit v1

    return-void

    :catchall_45
    move-exception v0

    monitor-exit v1
    :try_end_47
    .catchall {:try_start_41 .. :try_end_47} :catchall_45

    throw v0
.end method

.method private static initSystemAndSystemSignaturePkg()V
    .registers 5

    .line 222
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    .line 227
    :cond_7
    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    if-nez v0, :cond_e

    return-void

    :cond_e
    const/4 v1, 0x0

    .line 232
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_16

    return-void

    .line 237
    :cond_16
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 238
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 239
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_24
    :goto_24
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_49

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageInfo;

    if-nez v3, :cond_33

    goto :goto_24

    .line 243
    :cond_33
    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 244
    invoke-static {v3}, Lcom/meizu/systemui/shared/model/HipsUtils;->isSystemAppInner(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3f

    .line 245
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_24

    .line 248
    :cond_3f
    invoke-static {v3}, Lcom/meizu/systemui/shared/model/HipsUtils;->isHasSystemSignatureInner(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_24

    .line 249
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_24

    .line 252
    :cond_49
    sget-object v0, Lcom/meizu/systemui/shared/model/HipsUtils;->mDataSync:Ljava/lang/Object;

    monitor-enter v0

    .line 253
    :try_start_4c
    sput-object v1, Lcom/meizu/systemui/shared/model/HipsUtils;->mSystemPkgs:Ljava/util/ArrayList;

    .line 254
    sput-object v2, Lcom/meizu/systemui/shared/model/HipsUtils;->mHasSystemSignaturePkgs:Ljava/util/ArrayList;

    .line 255
    monitor-exit v0

    return-void

    :catchall_52
    move-exception v1

    monitor-exit v0
    :try_end_54
    .catchall {:try_start_4c .. :try_end_54} :catchall_52

    throw v1
.end method

.method public static isCtsPackage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6

    .line 614
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    .line 617
    :cond_8
    invoke-static {p1}, Lcom/meizu/systemui/shared/model/HipsUtils;->isCtsPackageName(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_f

    return v1

    :cond_f
    const-string v0, "HipsUtils"

    const-string v2, "isCtsPackage, start to get signatured info."

    .line 620
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    invoke-static {p0, p2}, Lcom/meizu/systemui/shared/model/HipsUtils;->getSignaturedApkInfo(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object p0

    if-nez p0, :cond_22

    const-string p0, "isCtsPackage, the pkgInfo is null, return false."

    .line 623
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 626
    :cond_22
    iget-object p2, p0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_30

    const-string p0, "isCtsPackage, the packageNames are different, return false."

    .line 627
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 630
    :cond_30
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    invoke-static {p0}, Lcom/meizu/systemui/shared/model/HipsUtils;->isCtsSignatures([Landroid/content/pm/Signature;)Z

    move-result p0

    if-nez p0, :cond_3e

    const-string p0, "isCtsPackage, the signatures are different, return false."

    .line 631
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_3e
    const/4 p0, 0x1

    return p0
.end method

.method private static isCtsPackageName(Ljava/lang/String;)Z
    .registers 3

    const-string v0, ".cts"

    .line 656
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    return v1

    :cond_a
    const-string v0, ".gts"

    .line 659
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_13

    return v1

    :cond_13
    const/4 p0, 0x0

    return p0
.end method

.method public static isCtsRunning()Z
    .registers 3

    .line 577
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    :cond_8
    const-string v2, "device_states"

    .line 582
    invoke-virtual {v0, v2}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmeizu/os/DeviceStateManager;

    if-nez v0, :cond_13

    return v1

    .line 586
    :cond_13
    invoke-virtual {v0}, Lmeizu/os/DeviceStateManager;->isCtsRunning()Z

    move-result v0

    return v0
.end method

.method private static isCtsSignatures([Landroid/content/pm/Signature;)Z
    .registers 5

    const/4 v0, 0x0

    if-eqz p0, :cond_26

    .line 666
    array-length v1, p0

    if-gtz v1, :cond_7

    goto :goto_26

    .line 669
    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 670
    array-length v2, p0

    :goto_d
    if-ge v0, v2, :cond_1b

    aget-object v3, p0, v0

    .line 671
    invoke-virtual {v3}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 673
    :cond_1b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "308204a830820390a003020102020900936eacbe07f201df300d06092a864886f70d0101050500308194310b3009060355040613025553311330110603550408130a43616c69666f726e6961311630140603550407130d4d6f756e7461696e20566965773110300e060355040a1307416e64726f69643110300e060355040b1307416e64726f69643110300e06035504031307416e64726f69643122302006092a864886f70d0109011613616e64726f696440616e64726f69642e636f6d301e170d3038303232393031333334365a170d3335303731373031333334365a308194310b3009060355040613025553311330110603550408130a43616c69666f726e6961311630140603550407130d4d6f756e7461696e20566965773110300e060355040a1307416e64726f69643110300e060355040b1307416e64726f69643110300e06035504031307416e64726f69643122302006092a864886f70d0109011613616e64726f696440616e64726f69642e636f6d30820120300d06092a864886f70d01010105000382010d00308201080282010100d6931904dec60b24b1edc762e0d9d8253e3ecd6ceb1de2ff068ca8e8bca8cd6bd3786ea70aa76ce60ebb0f993559ffd93e77a943e7e83d4b64b8e4fea2d3e656f1e267a81bbfb230b578c20443be4c7218b846f5211586f038a14e89c2be387f8ebecf8fcac3da1ee330c9ea93d0a7c3dc4af350220d50080732e0809717ee6a053359e6a694ec2cb3f284a0a466c87a94d83b31093a67372e2f6412c06e6d42f15818dffe0381cc0cd444da6cddc3b82458194801b32564134fbfde98c9287748dbf5676a540d8154c8bbca07b9e247553311c46b9af76fdeeccc8e69e7c8a2d08e782620943f99727d3c04fe72991d99df9bae38a0b2177fa31d5b6afee91f020103a381fc3081f9301d0603551d0e04160414485900563d272c46ae118605a47419ac09ca8c113081c90603551d230481c13081be8014485900563d272c46ae118605a47419ac09ca8c11a1819aa48197308194310b3009060355040613025553311330110603550408130a43616c69666f726e6961311630140603550407130d4d6f756e7461696e20566965773110300e060355040a1307416e64726f69643110300e060355040b1307416e64726f69643110300e06035504031307416e64726f69643122302006092a864886f70d0109011613616e64726f696440616e64726f69642e636f6d820900936eacbe07f201df300c0603551d13040530030101ff300d06092a864886f70d010105050003820101007aaf968ceb50c441055118d0daabaf015b8a765a27a715a2c2b44f221415ffdace03095abfa42df70708726c2069e5c36eddae0400be29452c084bc27eb6a17eac9dbe182c204eb15311f455d824b656dbe4dc2240912d7586fe88951d01a8feb5ae5a4260535df83431052422468c36e22c2a5ef994d61dd7306ae4c9f6951ba3c12f1d1914ddc61f1a62da2df827f603fea5603b2c540dbd7c019c36bab29a4271c117df523cdbc5f3817a49e0efa60cbd7f74177e7a4f193d43f4220772666e4c4d83e1bd5a86087cf34f2dec21e245ca6c2bb016e683638050d2c430eea7c26a1c49d3760a58ab7f1a82cc938b4831384324bd0401fa12163a50570e684d"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_26
    :goto_26
    return v0
.end method

.method public static isHasSystemSignature(Ljava/lang/String;)Z
    .registers 4

    const/4 v0, 0x0

    if-eqz p0, :cond_1d

    .line 175
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_a

    goto :goto_1d

    .line 179
    :cond_a
    sget-object v1, Lcom/meizu/systemui/shared/model/HipsUtils;->mDataSync:Ljava/lang/Object;

    monitor-enter v1

    .line 180
    :try_start_d
    sget-object v2, Lcom/meizu/systemui/shared/model/HipsUtils;->mHasSystemSignaturePkgs:Ljava/util/ArrayList;

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_18

    const/4 p0, 0x1

    .line 181
    monitor-exit v1

    return p0

    .line 183
    :cond_18
    monitor-exit v1

    return v0

    :catchall_1a
    move-exception p0

    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_d .. :try_end_1c} :catchall_1a

    throw p0

    :cond_1d
    :goto_1d
    return v0
.end method

.method private static isHasSystemSignatureInner(Ljava/lang/String;)Z
    .registers 5

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 523
    :cond_4
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v1

    .line 524
    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 526
    :try_start_c
    sget-object v2, Lcom/meizu/systemui/shared/model/HipsUtils;->mSystemSignature:[Landroid/content/pm/Signature;

    const/16 v3, 0x40

    if-nez v2, :cond_1d

    const-string v2, "android"

    .line 527
    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    sput-object v1, Lcom/meizu/systemui/shared/model/HipsUtils;->mSystemSignature:[Landroid/content/pm/Signature;

    goto :goto_49

    .line 530
    :cond_1d
    invoke-virtual {v1, p0, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 532
    sget-object v2, Lcom/meizu/systemui/shared/model/HipsUtils;->mSystemSignature:[Landroid/content/pm/Signature;

    invoke-static {v2, v1}, Lcom/meizu/systemui/shared/model/HipsUtils;->compareSignature([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)I

    move-result p0
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_29} :catch_2e

    if-nez p0, :cond_49

    const/4 p0, 0x1

    move v0, p0

    goto :goto_49

    .line 537
    :catch_2e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to comfirm if the package: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " has system signature."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "HipsUtils"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_49
    :goto_49
    return v0
.end method

.method public static isPkgInstalled(Ljava/lang/String;)Z
    .registers 3

    const/4 v0, 0x0

    if-eqz p0, :cond_14

    .line 189
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_a

    goto :goto_14

    .line 193
    :cond_a
    sget-object v1, Lcom/meizu/systemui/shared/model/HipsUtils;->mInstalledPkgs:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_14

    const/4 p0, 0x1

    return p0

    :cond_14
    :goto_14
    return v0
.end method

.method public static isProcessRunning(Ljava/lang/String;I)Z
    .registers 9

    .line 547
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "activity"

    .line 549
    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 551
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_53

    .line 553
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_53

    .line 554
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1d
    :goto_1d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_53

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningAppProcessInfo;

    const/4 v3, 0x1

    if-eqz p0, :cond_35

    .line 555
    iget-object v4, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_35

    return v3

    :cond_35
    const/4 v4, -0x1

    if-eq v4, p1, :cond_3d

    .line 559
    iget v4, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    if-eq v4, p1, :cond_3d

    goto :goto_1d

    .line 563
    :cond_3d
    iget-object v2, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    if-eqz v2, :cond_1d

    .line 564
    array-length v4, v2

    move v5, v1

    :goto_43
    if-ge v5, v4, :cond_1d

    aget-object v6, v2, v5

    if-eqz p0, :cond_50

    .line 565
    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_50

    return v3

    :cond_50
    add-int/lit8 v5, v5, 0x1

    goto :goto_43

    :cond_53
    return v1
.end method

.method public static isSystemApp(Ljava/lang/String;)Z
    .registers 4

    const/4 v0, 0x0

    if-eqz p0, :cond_1d

    .line 161
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_a

    goto :goto_1d

    .line 165
    :cond_a
    sget-object v1, Lcom/meizu/systemui/shared/model/HipsUtils;->mDataSync:Ljava/lang/Object;

    monitor-enter v1

    .line 166
    :try_start_d
    sget-object v2, Lcom/meizu/systemui/shared/model/HipsUtils;->mSystemPkgs:Ljava/util/ArrayList;

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_18

    const/4 p0, 0x1

    .line 167
    monitor-exit v1

    return p0

    .line 169
    :cond_18
    monitor-exit v1

    return v0

    :catchall_1a
    move-exception p0

    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_d .. :try_end_1c} :catchall_1a

    throw p0

    :cond_1d
    :goto_1d
    return v0
.end method

.method private static isSystemAppInner(Ljava/lang/String;)Z
    .registers 5

    .line 498
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    const/4 v1, 0x0

    .line 500
    :try_start_5
    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 501
    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1d

    .line 502
    iget v3, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v3, v2

    if-nez v3, :cond_1b

    iget v3, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_1d

    :cond_1b
    :goto_1b
    move v1, v2

    goto :goto_3d

    :cond_1d
    if-eqz v0, :cond_3d

    .line 505
    iget p0, v0, Landroid/content/pm/ApplicationInfo;->privateFlags:I
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_21} :catch_27

    const/high16 v0, -0x80000000

    and-int/2addr p0, v0

    if-eqz p0, :cond_3d

    goto :goto_1b

    .line 510
    :catch_27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can not get info for the package: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "HipsUtils"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3d
    :goto_3d
    return v1
.end method

.method public static isSystemReference(Landroid/content/pm/ApplicationInfo;)Z
    .registers 1

    if-eqz p0, :cond_9

    .line 681
    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {p0}, Lcom/meizu/systemui/shared/model/HipsUtils;->isSystemReference(Ljava/lang/String;)Z

    move-result p0

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    return p0
.end method

.method public static isSystemReference(Ljava/lang/String;)Z
    .registers 2

    .line 677
    invoke-static {p0}, Lcom/meizu/systemui/shared/model/HipsUtils;->isHasSystemSignature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_f

    invoke-static {p0}, Lcom/meizu/systemui/shared/model/HipsUtils;->isSystemApp(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_d

    goto :goto_f

    :cond_d
    const/4 p0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 p0, 0x1

    :goto_10
    return p0
.end method

.method public static loadAllFromFile(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    const-string v0, ""

    const/4 v1, 0x0

    .line 414
    :try_start_3
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 415
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_f

    return-object v0

    .line 419
    :cond_f
    sget-object p0, Lcom/meizu/systemui/shared/model/HipsUtils;->mIOSync:Ljava/lang/Object;

    monitor-enter p0
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_12} :catch_49
    .catchall {:try_start_3 .. :try_end_12} :catchall_47

    .line 420
    :try_start_12
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1c
    .catchall {:try_start_12 .. :try_end_1c} :catchall_44

    .line 421
    :try_start_1c
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 422
    monitor-exit p0
    :try_end_21
    .catchall {:try_start_1c .. :try_end_21} :catchall_40

    if-eqz v1, :cond_24

    move-object v0, v1

    .line 431
    :cond_24
    :try_start_24
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_27} :catch_28

    goto :goto_6d

    :catch_28
    move-exception p0

    .line 434
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_2e
    const-string v2, "loadAllFromFile, unable to close buffered reader!!: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "HipsUtils"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6d

    :catchall_40
    move-exception v1

    move-object v2, v1

    move-object v1, v3

    goto :goto_45

    :catchall_44
    move-exception v2

    .line 422
    :goto_45
    :try_start_45
    monitor-exit p0
    :try_end_46
    .catchall {:try_start_45 .. :try_end_46} :catchall_44

    :try_start_46
    throw v2
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_47} :catch_49
    .catchall {:try_start_46 .. :try_end_47} :catchall_47

    :catchall_47
    move-exception p0

    goto :goto_6e

    :catch_49
    move-exception p0

    :try_start_4a
    const-string v2, "HipsUtils"

    .line 427
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loadAllFromFile, read the info from file failed!!: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_60
    .catchall {:try_start_4a .. :try_end_60} :catchall_47

    if-eqz v1, :cond_6d

    .line 431
    :try_start_62
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_62 .. :try_end_65} :catch_66

    goto :goto_6d

    :catch_66
    move-exception p0

    .line 434
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_2e

    :cond_6d
    :goto_6d
    return-object v0

    :goto_6e
    if-eqz v1, :cond_8b

    .line 431
    :try_start_70
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_73
    .catch Ljava/lang/Exception; {:try_start_70 .. :try_end_73} :catch_74

    goto :goto_8b

    :catch_74
    move-exception v0

    .line 434
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadAllFromFile, unable to close buffered reader!!: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HipsUtils"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    :cond_8b
    :goto_8b
    throw p0
.end method

.method public static putValueIntoSettings(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    if-eqz p0, :cond_37

    if-nez p1, :cond_5

    goto :goto_37

    .line 119
    :cond_5
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_37

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_12

    goto :goto_37

    .line 123
    :cond_12
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    if-nez v0, :cond_19

    return-void

    .line 128
    :cond_19
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 130
    :try_start_1d
    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p0, p1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_24} :catch_2a
    .catchall {:try_start_1d .. :try_end_24} :catchall_28

    .line 134
    :goto_24
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_32

    :catchall_28
    move-exception p0

    goto :goto_33

    :catch_2a
    :try_start_2a
    const-string p0, "HipsUtils"

    const-string p1, "putValueIntoSettings, unable to put value to settings!"

    .line 132
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_31
    .catchall {:try_start_2a .. :try_end_31} :catchall_28

    goto :goto_24

    :goto_32
    return-void

    .line 134
    :goto_33
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0

    :cond_37
    :goto_37
    return-void
.end method

.method public static readInfoFromFile(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "HipsUtils"

    const/4 v1, 0x0

    .line 483
    :try_start_3
    invoke-static {p0}, Lcom/meizu/systemui/shared/model/HipsUtils;->loadAllFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 484
    invoke-static {p0}, Lcom/meizu/systemui/shared/model/HipsUtils;->splitInfoFromLoadedFile(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    const-string p0, "readInfoFromFile, read the info from file successfully"

    .line 485
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_10} :catch_11

    goto :goto_26

    :catch_11
    move-exception p0

    .line 487
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "readInfoFromFile, read the info from file failed!!: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_26
    if-nez v1, :cond_2d

    .line 490
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :cond_2d
    return-object v1
.end method

.method public static saveInfoToFile(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    const/4 v0, 0x0

    .line 388
    :try_start_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 389
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_14

    .line 390
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    const/16 v2, 0x1a4

    .line 391
    invoke-static {p1, v2}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V

    .line 393
    :cond_14
    sget-object p1, Lcom/meizu/systemui/shared/model/HipsUtils;->mIOSync:Ljava/lang/Object;

    monitor-enter p1
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_17} :catch_3c
    .catchall {:try_start_1 .. :try_end_17} :catchall_3a

    .line 394
    :try_start_17
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1c
    .catchall {:try_start_17 .. :try_end_1c} :catchall_37

    .line 395
    :try_start_1c
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/io/FileOutputStream;->write([B)V

    .line 396
    monitor-exit p1
    :try_end_24
    .catchall {:try_start_1c .. :try_end_24} :catchall_34

    :try_start_24
    const-string p0, "HipsUtils"

    const-string p1, "saveInfoToFile, save the info to file successfully."

    .line 397
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_2b} :catch_32
    .catchall {:try_start_24 .. :try_end_2b} :catchall_2f

    .line 402
    :try_start_2b
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_2e} :catch_47

    goto :goto_4e

    :catchall_2f
    move-exception p0

    move-object v0, v2

    goto :goto_4f

    :catch_32
    move-object v0, v2

    goto :goto_3c

    :catchall_34
    move-exception p0

    move-object v0, v2

    goto :goto_38

    :catchall_37
    move-exception p0

    .line 396
    :goto_38
    :try_start_38
    monitor-exit p1
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_37

    :try_start_39
    throw p0
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_3a} :catch_3c
    .catchall {:try_start_39 .. :try_end_3a} :catchall_3a

    :catchall_3a
    move-exception p0

    goto :goto_4f

    :catch_3c
    :goto_3c
    :try_start_3c
    const-string p0, "HipsUtils"

    const-string p1, "saveInfoToFile, save the info to file failed!!"

    .line 399
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_43
    .catchall {:try_start_3c .. :try_end_43} :catchall_3a

    .line 402
    :try_start_43
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_46} :catch_47

    goto :goto_4e

    :catch_47
    const-string p0, "HipsUtils"

    const-string p1, "saveInfoToFile, unable to close output stream!!"

    .line 404
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4e
    return-void

    .line 402
    :goto_4f
    :try_start_4f
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_52} :catch_53

    goto :goto_5a

    :catch_53
    const-string p1, "HipsUtils"

    const-string v0, "saveInfoToFile, unable to close output stream!!"

    .line 404
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    :goto_5a
    throw p0
.end method

.method public static saveUsageStatsData(Ljava/lang/String;Ljava/util/Map;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 91
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    if-nez v0, :cond_e

    const-string p0, "HipsUtils"

    const-string p1, "saveUsageStatsData, the context is null, return."

    .line 93
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 97
    :cond_e
    sget-object v1, Lcom/meizu/systemui/shared/model/HipsUtils;->mUsageStatsProxy:Landroid/nonvccUsageStats/UsageStatsNonVccProxy3;

    if-nez v1, :cond_24

    .line 98
    const-class v1, Lcom/meizu/systemui/shared/model/HipsUtils;

    monitor-enter v1

    .line 99
    :try_start_15
    sget-object v2, Lcom/meizu/systemui/shared/model/HipsUtils;->mUsageStatsProxy:Landroid/nonvccUsageStats/UsageStatsNonVccProxy3;

    if-nez v2, :cond_1f

    .line 100
    invoke-static {v0}, Landroid/nonvccUsageStats/UsageStatsNonVccProxy3;->getInstance(Landroid/content/Context;)Landroid/nonvccUsageStats/UsageStatsNonVccProxy3;

    move-result-object v0

    sput-object v0, Lcom/meizu/systemui/shared/model/HipsUtils;->mUsageStatsProxy:Landroid/nonvccUsageStats/UsageStatsNonVccProxy3;

    .line 102
    :cond_1f
    monitor-exit v1

    goto :goto_24

    :catchall_21
    move-exception p0

    monitor-exit v1
    :try_end_23
    .catchall {:try_start_15 .. :try_end_23} :catchall_21

    throw p0

    .line 105
    :cond_24
    :goto_24
    sget-object v0, Lcom/meizu/systemui/shared/model/HipsUtils;->mUsageStatsProxy:Landroid/nonvccUsageStats/UsageStatsNonVccProxy3;

    if-nez v0, :cond_30

    const-string p0, "HipsUtils"

    const-string p1, "saveUsageStatsData, the mUsageStatsProxy is null, return."

    .line 106
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_30
    const/4 v1, 0x0

    .line 111
    invoke-virtual {v0, p0, v1, p1}, Landroid/nonvccUsageStats/UsageStatsNonVccProxy3;->onOsEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static splitInfoFromLoadedFile(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "HipsUtils"

    .line 441
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-nez p0, :cond_a

    return-object v1

    :cond_a
    :try_start_a
    const-string v2, "\\#\\#\\#"

    .line 446
    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_27

    .line 448
    array-length v2, p0

    const/4 v3, 0x0

    :goto_14
    if-ge v3, v2, :cond_27

    aget-object v4, p0, v3

    const-string/jumbo v5, "|||*"

    const-string v6, ""

    .line 449
    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    :cond_27
    const-string/jumbo p0, "splitInfoFromLoadedFile, read the info from file successfully"

    .line 452
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_2d} :catch_2e

    goto :goto_44

    :catch_2e
    move-exception p0

    .line 454
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "splitInfoFromLoadedFile, read the info from file failed!!: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_44
    return-object v1
.end method

.method public static splitInfoFromLoadedFile(Ljava/lang/String;Ljava/util/HashSet;)Ljava/util/HashSet;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "HipsUtils"

    .line 460
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    if-nez p0, :cond_a

    return-object v1

    :cond_a
    :try_start_a
    const-string v2, "\\#\\#\\#"

    .line 465
    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_31

    .line 467
    array-length v2, p0

    const/4 v3, 0x0

    :goto_14
    if-ge v3, v2, :cond_31

    aget-object v4, p0, v3

    if-eqz p1, :cond_22

    if-eqz p1, :cond_2e

    .line 468
    invoke-virtual {p1, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2e

    :cond_22
    const-string/jumbo v5, "|||*"

    const-string v6, ""

    .line 469
    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_2e
    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    :cond_31
    const-string/jumbo p0, "splitInfoFromLoadedFile, read the info from file successfully"

    .line 473
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_37} :catch_38

    goto :goto_4e

    :catch_38
    move-exception p0

    .line 475
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "splitInfoFromLoadedFile, read the info from file failed!!: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4e
    return-object v1
.end method

.method public static updateInstalledPkg(Ljava/lang/String;Z)V
    .registers 3

    if-eqz p0, :cond_30

    .line 259
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_30

    .line 262
    :cond_9
    sget-object v0, Lcom/meizu/systemui/shared/model/HipsUtils;->mDataSync:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p1, :cond_1e

    .line 264
    :try_start_e
    sget-object p1, Lcom/meizu/systemui/shared/model/HipsUtils;->mInstalledPkgs:Ljava/util/ArrayList;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_18

    .line 265
    monitor-exit v0

    return-void

    .line 267
    :cond_18
    sget-object p1, Lcom/meizu/systemui/shared/model/HipsUtils;->mInstalledPkgs:Ljava/util/ArrayList;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2b

    .line 269
    :cond_1e
    sget-object p1, Lcom/meizu/systemui/shared/model/HipsUtils;->mInstalledPkgs:Ljava/util/ArrayList;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2b

    .line 270
    sget-object p1, Lcom/meizu/systemui/shared/model/HipsUtils;->mInstalledPkgs:Ljava/util/ArrayList;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 273
    :cond_2b
    :goto_2b
    monitor-exit v0

    return-void

    :catchall_2d
    move-exception p0

    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_e .. :try_end_2f} :catchall_2d

    throw p0

    :cond_30
    :goto_30
    return-void
.end method

.method public static updateSystemSignaturePkg(Ljava/lang/String;Z)V
    .registers 3

    if-eqz p0, :cond_36

    .line 201
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_36

    .line 205
    :cond_9
    sget-object v0, Lcom/meizu/systemui/shared/model/HipsUtils;->mDataSync:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p1, :cond_24

    .line 207
    :try_start_e
    sget-object p1, Lcom/meizu/systemui/shared/model/HipsUtils;->mHasSystemSignaturePkgs:Ljava/util/ArrayList;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_18

    .line 208
    monitor-exit v0

    return-void

    .line 210
    :cond_18
    invoke-static {p0}, Lcom/meizu/systemui/shared/model/HipsUtils;->isHasSystemSignatureInner(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_31

    .line 211
    sget-object p1, Lcom/meizu/systemui/shared/model/HipsUtils;->mHasSystemSignaturePkgs:Ljava/util/ArrayList;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_31

    .line 214
    :cond_24
    sget-object p1, Lcom/meizu/systemui/shared/model/HipsUtils;->mHasSystemSignaturePkgs:Ljava/util/ArrayList;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_31

    .line 215
    sget-object p1, Lcom/meizu/systemui/shared/model/HipsUtils;->mHasSystemSignaturePkgs:Ljava/util/ArrayList;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 218
    :cond_31
    :goto_31
    monitor-exit v0

    return-void

    :catchall_33
    move-exception p0

    monitor-exit v0
    :try_end_35
    .catchall {:try_start_e .. :try_end_35} :catchall_33

    throw p0

    :cond_36
    :goto_36
    return-void
.end method
