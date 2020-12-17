.class public Lcom/android/server/hips/utils/HipsUtils;
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
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/hips/utils/HipsUtils;->mSystemSignature:[Landroid/content/pm/Signature;

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/hips/utils/HipsUtils;->mSystemPkgs:Ljava/util/ArrayList;

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/hips/utils/HipsUtils;->mHasSystemSignaturePkgs:Ljava/util/ArrayList;

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/hips/utils/HipsUtils;->mInstalledPkgs:Ljava/util/ArrayList;

    .line 83
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/hips/utils/HipsUtils;->mDataSync:Ljava/lang/Object;

    .line 84
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/hips/utils/HipsUtils;->mIOSync:Ljava/lang/Object;

    .line 87
    invoke-static {}, Lcom/android/server/hips/utils/HipsUtils;->initInstalledPkg()V

    .line 88
    invoke-static {}, Lcom/android/server/hips/utils/HipsUtils;->initSystemAndSystemSignaturePkg()V

    .line 89
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static changeDefaultSMS(Ljava/lang/String;)V
    .registers 2
    .param p0, "pkgName"  # Ljava/lang/String;

    .line 352
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    .line 353
    .local v0, "context":Landroid/content/Context;
    invoke-static {p0, v0}, Lcom/android/internal/telephony/SmsApplication;->setDefaultApplication(Ljava/lang/String;Landroid/content/Context;)V

    .line 354
    return-void
.end method

.method public static changeInputMethod(Ljava/lang/String;)V
    .registers 3
    .param p0, "methodId"  # Ljava/lang/String;

    .line 379
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    const-string/jumbo v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 382
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_13

    .line 383
    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Landroid/view/inputmethod/InputMethodManager;->setInputMethod(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 385
    :cond_13
    return-void
.end method

.method private static compareSignature([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)I
    .registers 8
    .param p0, "s1"  # [Landroid/content/pm/Signature;
    .param p1, "s2"  # [Landroid/content/pm/Signature;

    .line 545
    if-nez p0, :cond_8

    .line 546
    if-nez p1, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    .line 547
    :cond_6
    const/4 v0, -0x1

    .line 546
    :goto_7
    return v0

    .line 549
    :cond_8
    if-nez p1, :cond_c

    .line 550
    const/4 v0, -0x2

    return v0

    .line 552
    :cond_c
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 553
    .local v0, "set1":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/content/pm/Signature;>;"
    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_14
    if-ge v3, v1, :cond_1e

    aget-object v4, p0, v3

    .line 554
    .local v4, "sig":Landroid/content/pm/Signature;
    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 553
    .end local v4  # "sig":Landroid/content/pm/Signature;
    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    .line 556
    :cond_1e
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 557
    .local v1, "set2":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/content/pm/Signature;>;"
    array-length v3, p1

    move v4, v2

    :goto_25
    if-ge v4, v3, :cond_2f

    aget-object v5, p1, v4

    .line 558
    .local v5, "sig":Landroid/content/pm/Signature;
    invoke-virtual {v1, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 557
    .end local v5  # "sig":Landroid/content/pm/Signature;
    add-int/lit8 v4, v4, 0x1

    goto :goto_25

    .line 561
    :cond_2f
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_36

    .line 562
    return v2

    .line 564
    :cond_36
    const/4 v2, -0x3

    return v2
.end method

.method public static getDefaultLauncherPkgName()Ljava/lang/String;
    .registers 7

    .line 324
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    .line 325
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 327
    .local v1, "pm":Landroid/content/pm/PackageManager;
    const-string v2, ""

    if-nez v1, :cond_d

    .line 328
    return-object v2

    .line 331
    :cond_d
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 332
    .local v3, "intent":Landroid/content/Intent;
    const-string v4, "android.intent.category.HOME"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 333
    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v4

    .line 334
    .local v4, "resolveinfo":Landroid/content/pm/ResolveInfo;
    if-nez v4, :cond_21

    .line 335
    return-object v2

    .line 338
    :cond_21
    iget-object v5, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 339
    .local v5, "activityInfo":Landroid/content/pm/ActivityInfo;
    if-nez v5, :cond_26

    .line 340
    return-object v2

    .line 343
    :cond_26
    iget-object v6, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 344
    .local v6, "launcherPkg":Ljava/lang/String;
    if-nez v6, :cond_2b

    .line 345
    return-object v2

    .line 348
    :cond_2b
    return-object v6
.end method

.method private static getSignaturedApkInfo(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;
    .registers 6
    .param p0, "context"  # Landroid/content/Context;
    .param p1, "apkPath"  # Ljava/lang/String;

    .line 608
    const/4 v0, 0x0

    const-string v1, "HipsUtils"

    if-eqz p1, :cond_27

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_c

    goto :goto_27

    .line 612
    :cond_c
    if-nez p0, :cond_14

    .line 613
    const-string v2, "getSignaturedApkInfo, the context is null, return null."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    return-object v0

    .line 616
    :cond_14
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 617
    .local v2, "pkgManager":Landroid/content/pm/PackageManager;
    if-nez v2, :cond_20

    .line 618
    const-string v3, "getSignaturedApkInfo, the pkgManager is null, return null."

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    return-object v0

    .line 621
    :cond_20
    const/16 v0, 0x40

    invoke-virtual {v2, p1, v0}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 622
    .local v0, "pkgInfo":Landroid/content/pm/PackageInfo;
    return-object v0

    .line 609
    .end local v0  # "pkgInfo":Landroid/content/pm/PackageInfo;
    .end local v2  # "pkgManager":Landroid/content/pm/PackageManager;
    :cond_27
    :goto_27
    const-string v2, "getSignaturedApkInfo, the apkPath is null or empty, return null."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    return-object v0
.end method

.method public static getTopActivityName()Landroid/content/ComponentName;
    .registers 4

    .line 358
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    .line 359
    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 360
    .local v0, "activityManager":Landroid/app/ActivityManager;
    const/4 v1, 0x0

    if-nez v0, :cond_10

    .line 361
    return-object v1

    .line 364
    :cond_10
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v2

    .line 365
    .local v2, "taskInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    if-eqz v2, :cond_2b

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_1e

    goto :goto_2b

    .line 369
    :cond_1e
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 370
    .local v3, "taskInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    if-nez v3, :cond_28

    .line 371
    return-object v1

    .line 374
    :cond_28
    iget-object v1, v3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    return-object v1

    .line 366
    .end local v3  # "taskInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    :cond_2b
    :goto_2b
    return-object v1
.end method

.method public static getUidByPkgName(Ljava/lang/String;)I
    .registers 6
    .param p0, "pkgName"  # Ljava/lang/String;

    .line 306
    const/4 v0, -0x1

    .line 307
    .local v0, "result":I
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v1

    .line 308
    invoke-virtual {v1}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 309
    .local v1, "pm":Landroid/content/pm/PackageManager;
    if-eqz v1, :cond_2d

    .line 311
    const/4 v2, 0x1

    :try_start_c
    invoke-virtual {v1, p0, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 313
    .local v2, "info":Landroid/content/pm/ApplicationInfo;
    if-eqz v2, :cond_15

    .line 314
    iget v3, v2, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_14} :catch_16

    move v0, v3

    .line 318
    .end local v2  # "info":Landroid/content/pm/ApplicationInfo;
    :cond_15
    goto :goto_2d

    .line 316
    :catch_16
    move-exception v2

    .line 317
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to get App info for pkg: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "HipsUtils"

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    .end local v2  # "e":Ljava/lang/Exception;
    :cond_2d
    :goto_2d
    return v0
.end method

.method public static getValueFromSettings(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p0, "key"  # Ljava/lang/String;

    .line 141
    const-string v0, ""

    if-eqz p0, :cond_28

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_b

    goto :goto_28

    .line 145
    :cond_b
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v1

    .line 146
    .local v1, "context":Landroid/content/Context;
    if-nez v1, :cond_12

    .line 147
    return-object v0

    .line 150
    :cond_12
    const-string v0, ""

    .line 152
    .local v0, "value":Ljava/lang/String;
    nop

    .line 153
    :try_start_15
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, p0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_1d} :catch_1f

    move-object v0, v2

    .line 157
    goto :goto_27

    .line 154
    :catch_1f
    move-exception v2

    .line 155
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "HipsUtils"

    const-string v4, "getValueFromSettings, unable to get value from settings!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    .end local v2  # "e":Ljava/lang/Exception;
    :goto_27
    return-object v0

    .line 142
    .end local v0  # "value":Ljava/lang/String;
    .end local v1  # "context":Landroid/content/Context;
    :cond_28
    :goto_28
    return-object v0
.end method

.method private static initInstalledPkg()V
    .registers 8

    .line 279
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 280
    .local v0, "tmpPkgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v1

    .line 281
    .local v1, "context":Landroid/content/Context;
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 282
    .local v2, "pm":Landroid/content/pm/PackageManager;
    if-eqz v2, :cond_3e

    .line 283
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v3

    .line 284
    .local v3, "infoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    if-eqz v3, :cond_3e

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_3e

    .line 285
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_20
    :goto_20
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/PackageInfo;

    .line 286
    .local v5, "pkgInfo":Landroid/content/pm/PackageInfo;
    if-nez v5, :cond_2f

    .line 287
    goto :goto_20

    .line 290
    :cond_2f
    iget-object v6, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 291
    .local v6, "pkgName":Ljava/lang/String;
    if-eqz v6, :cond_20

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_3a

    .line 292
    goto :goto_20

    .line 295
    :cond_3a
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 296
    .end local v5  # "pkgInfo":Landroid/content/pm/PackageInfo;
    .end local v6  # "pkgName":Ljava/lang/String;
    goto :goto_20

    .line 300
    .end local v3  # "infoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    :cond_3e
    sget-object v3, Lcom/android/server/hips/utils/HipsUtils;->mDataSync:Ljava/lang/Object;

    monitor-enter v3

    .line 301
    :try_start_41
    sput-object v0, Lcom/android/server/hips/utils/HipsUtils;->mInstalledPkgs:Ljava/util/ArrayList;

    .line 302
    monitor-exit v3

    .line 303
    return-void

    .line 302
    :catchall_45
    move-exception v4

    monitor-exit v3
    :try_end_47
    .catchall {:try_start_41 .. :try_end_47} :catchall_45

    throw v4
.end method

.method private static initSystemAndSystemSignaturePkg()V
    .registers 9

    .line 224
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    .line 225
    .local v0, "context":Landroid/content/Context;
    if-nez v0, :cond_7

    .line 226
    return-void

    .line 229
    :cond_7
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 230
    .local v1, "pm":Landroid/content/pm/PackageManager;
    if-nez v1, :cond_e

    .line 231
    return-void

    .line 234
    :cond_e
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v2

    .line 235
    .local v2, "infoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    if-nez v2, :cond_16

    .line 236
    return-void

    .line 239
    :cond_16
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 240
    .local v3, "tmpSystemPkgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 241
    .local v4, "tmpSysSignaturesPkgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_24
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_49

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/PackageInfo;

    .line 242
    .local v6, "pkgInfo":Landroid/content/pm/PackageInfo;
    if-nez v6, :cond_33

    .line 243
    goto :goto_24

    .line 245
    :cond_33
    iget-object v7, v6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 246
    .local v7, "pkgName":Ljava/lang/String;
    invoke-static {v7}, Lcom/android/server/hips/utils/HipsUtils;->isSystemAppInner(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3f

    .line 247
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 248
    goto :goto_24

    .line 250
    :cond_3f
    invoke-static {v7}, Lcom/android/server/hips/utils/HipsUtils;->isHasSystemSignatureInner(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_48

    .line 251
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 253
    .end local v6  # "pkgInfo":Landroid/content/pm/PackageInfo;
    .end local v7  # "pkgName":Ljava/lang/String;
    :cond_48
    goto :goto_24

    .line 254
    :cond_49
    sget-object v5, Lcom/android/server/hips/utils/HipsUtils;->mDataSync:Ljava/lang/Object;

    monitor-enter v5

    .line 255
    :try_start_4c
    sput-object v3, Lcom/android/server/hips/utils/HipsUtils;->mSystemPkgs:Ljava/util/ArrayList;

    .line 256
    sput-object v4, Lcom/android/server/hips/utils/HipsUtils;->mHasSystemSignaturePkgs:Ljava/util/ArrayList;

    .line 257
    monitor-exit v5

    .line 258
    return-void

    .line 257
    :catchall_52
    move-exception v6

    monitor-exit v5
    :try_end_54
    .catchall {:try_start_4c .. :try_end_54} :catchall_52

    throw v6
.end method

.method public static isCtsPackage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7
    .param p0, "context"  # Landroid/content/Context;
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "apkPath"  # Ljava/lang/String;

    .line 584
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 585
    return v1

    .line 587
    :cond_8
    invoke-static {p1}, Lcom/android/server/hips/utils/HipsUtils;->isCtsPackageName(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 588
    return v1

    .line 590
    :cond_f
    const-string v0, "HipsUtils"

    const-string/jumbo v2, "isCtsPackage, start to get signatured info."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    invoke-static {p0, p2}, Lcom/android/server/hips/utils/HipsUtils;->getSignaturedApkInfo(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 592
    .local v2, "pkgInfo":Landroid/content/pm/PackageInfo;
    if-nez v2, :cond_24

    .line 593
    const-string/jumbo v3, "isCtsPackage, the pkgInfo is null, return false."

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    return v1

    .line 596
    :cond_24
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v3, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_33

    .line 597
    const-string/jumbo v3, "isCtsPackage, the packageNames are different, return false."

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    return v1

    .line 600
    :cond_33
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    invoke-static {v3}, Lcom/android/server/hips/utils/HipsUtils;->isCtsSignatures([Landroid/content/pm/Signature;)Z

    move-result v3

    if-nez v3, :cond_42

    .line 601
    const-string/jumbo v3, "isCtsPackage, the signatures are different, return false."

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    return v1

    .line 604
    :cond_42
    const/4 v0, 0x1

    return v0
.end method

.method private static isCtsPackageName(Ljava/lang/String;)Z
    .registers 3
    .param p0, "packageName"  # Ljava/lang/String;

    .line 626
    const-string v0, ".cts"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    .line 627
    return v1

    .line 629
    :cond_a
    const-string v0, ".gts"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 630
    return v1

    .line 632
    :cond_13
    const/4 v0, 0x0

    return v0
.end method

.method public static isCtsRunning()Z
    .registers 3

    .line 532
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    .line 533
    .local v0, "context":Landroid/content/Context;
    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 534
    return v1

    .line 536
    :cond_8
    nop

    .line 537
    const-string v2, "device_states"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmeizu/os/DeviceStateManager;

    .line 538
    .local v2, "deviceStateManager":Lmeizu/os/DeviceStateManager;
    if-nez v2, :cond_14

    .line 539
    return v1

    .line 541
    :cond_14
    invoke-virtual {v2}, Lmeizu/os/DeviceStateManager;->isCtsRunning()Z

    move-result v1

    return v1
.end method

.method private static isCtsSignatures([Landroid/content/pm/Signature;)Z
    .registers 6
    .param p0, "signatures"  # [Landroid/content/pm/Signature;

    .line 636
    const/4 v0, 0x0

    if-eqz p0, :cond_26

    array-length v1, p0

    if-gtz v1, :cond_7

    goto :goto_26

    .line 639
    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 640
    .local v1, "sb":Ljava/lang/StringBuilder;
    array-length v2, p0

    :goto_d
    if-ge v0, v2, :cond_1b

    aget-object v3, p0, v0

    .line 641
    .local v3, "signature":Landroid/content/pm/Signature;
    invoke-virtual {v3}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 640
    .end local v3  # "signature":Landroid/content/pm/Signature;
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 643
    :cond_1b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "308204a830820390a003020102020900936eacbe07f201df300d06092a864886f70d0101050500308194310b3009060355040613025553311330110603550408130a43616c69666f726e6961311630140603550407130d4d6f756e7461696e20566965773110300e060355040a1307416e64726f69643110300e060355040b1307416e64726f69643110300e06035504031307416e64726f69643122302006092a864886f70d0109011613616e64726f696440616e64726f69642e636f6d301e170d3038303232393031333334365a170d3335303731373031333334365a308194310b3009060355040613025553311330110603550408130a43616c69666f726e6961311630140603550407130d4d6f756e7461696e20566965773110300e060355040a1307416e64726f69643110300e060355040b1307416e64726f69643110300e06035504031307416e64726f69643122302006092a864886f70d0109011613616e64726f696440616e64726f69642e636f6d30820120300d06092a864886f70d01010105000382010d00308201080282010100d6931904dec60b24b1edc762e0d9d8253e3ecd6ceb1de2ff068ca8e8bca8cd6bd3786ea70aa76ce60ebb0f993559ffd93e77a943e7e83d4b64b8e4fea2d3e656f1e267a81bbfb230b578c20443be4c7218b846f5211586f038a14e89c2be387f8ebecf8fcac3da1ee330c9ea93d0a7c3dc4af350220d50080732e0809717ee6a053359e6a694ec2cb3f284a0a466c87a94d83b31093a67372e2f6412c06e6d42f15818dffe0381cc0cd444da6cddc3b82458194801b32564134fbfde98c9287748dbf5676a540d8154c8bbca07b9e247553311c46b9af76fdeeccc8e69e7c8a2d08e782620943f99727d3c04fe72991d99df9bae38a0b2177fa31d5b6afee91f020103a381fc3081f9301d0603551d0e04160414485900563d272c46ae118605a47419ac09ca8c113081c90603551d230481c13081be8014485900563d272c46ae118605a47419ac09ca8c11a1819aa48197308194310b3009060355040613025553311330110603550408130a43616c69666f726e6961311630140603550407130d4d6f756e7461696e20566965773110300e060355040a1307416e64726f69643110300e060355040b1307416e64726f69643110300e06035504031307416e64726f69643122302006092a864886f70d0109011613616e64726f696440616e64726f69642e636f6d820900936eacbe07f201df300c0603551d13040530030101ff300d06092a864886f70d010105050003820101007aaf968ceb50c441055118d0daabaf015b8a765a27a715a2c2b44f221415ffdace03095abfa42df70708726c2069e5c36eddae0400be29452c084bc27eb6a17eac9dbe182c204eb15311f455d824b656dbe4dc2240912d7586fe88951d01a8feb5ae5a4260535df83431052422468c36e22c2a5ef994d61dd7306ae4c9f6951ba3c12f1d1914ddc61f1a62da2df827f603fea5603b2c540dbd7c019c36bab29a4271c117df523cdbc5f3817a49e0efa60cbd7f74177e7a4f193d43f4220772666e4c4d83e1bd5a86087cf34f2dec21e245ca6c2bb016e683638050d2c430eea7c26a1c49d3760a58ab7f1a82cc938b4831384324bd0401fa12163a50570e684d"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 637
    .end local v1  # "sb":Ljava/lang/StringBuilder;
    :cond_26
    :goto_26
    return v0
.end method

.method public static isHasSystemSignature(Ljava/lang/String;)Z
    .registers 4
    .param p0, "pkgName"  # Ljava/lang/String;

    .line 177
    const/4 v0, 0x0

    if-eqz p0, :cond_1d

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_a

    goto :goto_1d

    .line 181
    :cond_a
    sget-object v1, Lcom/android/server/hips/utils/HipsUtils;->mDataSync:Ljava/lang/Object;

    monitor-enter v1

    .line 182
    :try_start_d
    sget-object v2, Lcom/android/server/hips/utils/HipsUtils;->mHasSystemSignaturePkgs:Ljava/util/ArrayList;

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 183
    const/4 v0, 0x1

    monitor-exit v1

    return v0

    .line 185
    :cond_18
    monitor-exit v1

    .line 187
    return v0

    .line 185
    :catchall_1a
    move-exception v0

    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_d .. :try_end_1c} :catchall_1a

    throw v0

    .line 178
    :cond_1d
    :goto_1d
    return v0
.end method

.method private static isHasSystemSignatureInner(Ljava/lang/String;)Z
    .registers 7
    .param p0, "pkgName"  # Ljava/lang/String;

    .line 498
    if-nez p0, :cond_4

    .line 499
    const/4 v0, 0x0

    return v0

    .line 502
    :cond_4
    const/4 v0, 0x0

    .line 504
    .local v0, "result":Z
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v1

    .line 505
    .local v1, "context":Landroid/content/Context;
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 507
    .local v2, "pm":Landroid/content/pm/PackageManager;
    :try_start_d
    sget-object v3, Lcom/android/server/hips/utils/HipsUtils;->mSystemSignature:[Landroid/content/pm/Signature;

    const/16 v4, 0x40

    if-nez v3, :cond_1e

    .line 508
    const-string v3, "android"

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    sput-object v3, Lcom/android/server/hips/utils/HipsUtils;->mSystemSignature:[Landroid/content/pm/Signature;

    goto :goto_2d

    .line 511
    :cond_1e
    invoke-virtual {v2, p0, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 513
    .local v3, "appSignature":[Landroid/content/pm/Signature;
    sget-object v4, Lcom/android/server/hips/utils/HipsUtils;->mSystemSignature:[Landroid/content/pm/Signature;

    invoke-static {v4, v3}, Lcom/android/server/hips/utils/HipsUtils;->compareSignature([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)I

    move-result v4
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_2a} :catch_2e

    if-nez v4, :cond_2d

    .line 514
    const/4 v0, 0x1

    .line 520
    .end local v3  # "appSignature":[Landroid/content/pm/Signature;
    :cond_2d
    :goto_2d
    goto :goto_4a

    .line 517
    :catch_2e
    move-exception v3

    .line 518
    .local v3, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to comfirm if the package: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " has system signature."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "HipsUtils"

    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    .end local v3  # "e":Ljava/lang/Exception;
    :goto_4a
    return v0
.end method

.method public static isPkgInstalled(Ljava/lang/String;)Z
    .registers 3
    .param p0, "pkgName"  # Ljava/lang/String;

    .line 191
    const/4 v0, 0x0

    if-eqz p0, :cond_15

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_a

    goto :goto_15

    .line 195
    :cond_a
    sget-object v1, Lcom/android/server/hips/utils/HipsUtils;->mInstalledPkgs:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 196
    const/4 v0, 0x1

    return v0

    .line 199
    :cond_14
    return v0

    .line 192
    :cond_15
    :goto_15
    return v0
.end method

.method public static isProcessRunning(Ljava/lang/String;I)Z
    .registers 4
    .param p0, "pkgName"  # Ljava/lang/String;
    .param p1, "uid"  # I

    .line 526
    const/4 v0, 0x0

    .line 527
    .local v0, "result":Z
    invoke-static {}, Lcom/meizu/pps/observer/PPSProcessManager;->getInstance()Lcom/meizu/pps/observer/PPSProcessManager;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Lcom/meizu/pps/observer/PPSProcessManager;->isAppRunning(Ljava/lang/String;I)Z

    move-result v0

    .line 528
    return v0
.end method

.method public static isSystemApp(Ljava/lang/String;)Z
    .registers 4
    .param p0, "pkgName"  # Ljava/lang/String;

    .line 163
    const/4 v0, 0x0

    if-eqz p0, :cond_1d

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_a

    goto :goto_1d

    .line 167
    :cond_a
    sget-object v1, Lcom/android/server/hips/utils/HipsUtils;->mDataSync:Ljava/lang/Object;

    monitor-enter v1

    .line 168
    :try_start_d
    sget-object v2, Lcom/android/server/hips/utils/HipsUtils;->mSystemPkgs:Ljava/util/ArrayList;

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 169
    const/4 v0, 0x1

    monitor-exit v1

    return v0

    .line 171
    :cond_18
    monitor-exit v1

    .line 173
    return v0

    .line 171
    :catchall_1a
    move-exception v0

    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_d .. :try_end_1c} :catchall_1a

    throw v0

    .line 164
    :cond_1d
    :goto_1d
    return v0
.end method

.method private static isSystemAppInner(Ljava/lang/String;)Z
    .registers 6
    .param p0, "pkgName"  # Ljava/lang/String;

    .line 477
    const/4 v0, 0x0

    .line 479
    .local v0, "result":Z
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v1

    .line 481
    .local v1, "context":Landroid/content/Context;
    :try_start_5
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    .line 482
    invoke-virtual {v2, p0, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 483
    .local v2, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v2, :cond_1e

    iget v3, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_1c

    iget v3, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_1e

    .line 485
    :cond_1c
    const/4 v0, 0x1

    goto :goto_28

    .line 486
    :cond_1e
    if-eqz v2, :cond_28

    iget v3, v2, Landroid/content/pm/ApplicationInfo;->privateFlags:I
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_22} :catch_29

    const/high16 v4, -0x80000000

    and-int/2addr v3, v4

    if-eqz v3, :cond_28

    .line 488
    const/4 v0, 0x1

    .line 492
    .end local v2  # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_28
    :goto_28
    goto :goto_40

    .line 490
    :catch_29
    move-exception v2

    .line 491
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can not get info for the package: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "HipsUtils"

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    .end local v2  # "e":Ljava/lang/Exception;
    :goto_40
    return v0
.end method

.method public static isSystemReference(Landroid/content/pm/ApplicationInfo;)Z
    .registers 2
    .param p0, "info"  # Landroid/content/pm/ApplicationInfo;

    .line 651
    if-eqz p0, :cond_9

    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/server/hips/utils/HipsUtils;->isSystemReference(Ljava/lang/String;)Z

    move-result v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public static isSystemReference(Ljava/lang/String;)Z
    .registers 2
    .param p0, "pkgName"  # Ljava/lang/String;

    .line 647
    invoke-static {p0}, Lcom/android/server/hips/utils/HipsUtils;->isHasSystemSignature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_f

    invoke-static {p0}, Lcom/android/server/hips/utils/HipsUtils;->isSystemApp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method

.method public static loadAllFromFile(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p0, "path"  # Ljava/lang/String;

    .line 412
    const-string v0, ""

    .line 414
    .local v0, "ret":Ljava/lang/String;
    const/4 v1, 0x0

    .line 416
    .local v1, "reader":Ljava/io/BufferedReader;
    :try_start_3
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 417
    .local v2, "infoFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_c} :catch_6b
    .catchall {:try_start_3 .. :try_end_c} :catchall_69

    if-nez v3, :cond_30

    .line 418
    nop

    .line 432
    if-eqz v1, :cond_2e

    .line 433
    :try_start_11
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_14} :catch_15

    goto :goto_2e

    .line 435
    :catch_15
    move-exception v3

    .line 436
    .local v3, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "loadAllFromFile, unable to close buffered reader!!: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "HipsUtils"

    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2f

    .line 437
    .end local v3  # "e":Ljava/lang/Exception;
    :cond_2e
    :goto_2e
    nop

    .line 418
    :goto_2f
    return-object v0

    .line 420
    :cond_30
    const/4 v3, 0x0

    .line 421
    .local v3, "line":Ljava/lang/String;
    :try_start_31
    sget-object v4, Lcom/android/server/hips/utils/HipsUtils;->mIOSync:Ljava/lang/Object;

    monitor-enter v4
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_34} :catch_6b
    .catchall {:try_start_31 .. :try_end_34} :catchall_69

    .line 422
    :try_start_34
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/FileReader;

    invoke-direct {v6, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v1, v5

    .line 423
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    move-object v3, v5

    .line 424
    monitor-exit v4
    :try_end_45
    .catchall {:try_start_34 .. :try_end_45} :catchall_66

    .line 425
    if-eqz v3, :cond_48

    .line 426
    move-object v0, v3

    .line 432
    .end local v2  # "infoFile":Ljava/io/File;
    .end local v3  # "line":Ljava/lang/String;
    :cond_48
    nop

    .line 433
    :try_start_49
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_4c} :catch_4d

    .line 437
    :cond_4c
    :goto_4c
    goto :goto_90

    .line 435
    :catch_4d
    move-exception v2

    .line 436
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    :goto_53
    const-string/jumbo v4, "loadAllFromFile, unable to close buffered reader!!: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "HipsUtils"

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    .end local v2  # "e":Ljava/lang/Exception;
    goto :goto_90

    .line 424
    .local v2, "infoFile":Ljava/io/File;
    .restart local v3  # "line":Ljava/lang/String;
    :catchall_66
    move-exception v5

    :try_start_67
    monitor-exit v4
    :try_end_68
    .catchall {:try_start_67 .. :try_end_68} :catchall_66

    .end local v0  # "ret":Ljava/lang/String;
    .end local v1  # "reader":Ljava/io/BufferedReader;
    .end local p0  # "path":Ljava/lang/String;
    :try_start_68
    throw v5
    :try_end_69
    .catch Ljava/lang/Exception; {:try_start_68 .. :try_end_69} :catch_6b
    .catchall {:try_start_68 .. :try_end_69} :catchall_69

    .line 431
    .end local v2  # "infoFile":Ljava/io/File;
    .end local v3  # "line":Ljava/lang/String;
    .restart local v0  # "ret":Ljava/lang/String;
    .restart local v1  # "reader":Ljava/io/BufferedReader;
    .restart local p0  # "path":Ljava/lang/String;
    :catchall_69
    move-exception v2

    goto :goto_91

    .line 428
    :catch_6b
    move-exception v2

    .line 429
    .local v2, "e":Ljava/lang/Exception;
    :try_start_6c
    const-string v3, "HipsUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "loadAllFromFile, read the info from file failed!!: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_83
    .catchall {:try_start_6c .. :try_end_83} :catchall_69

    .line 432
    .end local v2  # "e":Ljava/lang/Exception;
    if-eqz v1, :cond_4c

    .line 433
    :try_start_85
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_88
    .catch Ljava/lang/Exception; {:try_start_85 .. :try_end_88} :catch_89

    goto :goto_4c

    .line 435
    :catch_89
    move-exception v2

    .line 436
    .restart local v2  # "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_53

    .line 439
    .end local v2  # "e":Ljava/lang/Exception;
    :goto_90
    return-object v0

    .line 432
    :goto_91
    if-eqz v1, :cond_b0

    .line 433
    :try_start_93
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_96
    .catch Ljava/lang/Exception; {:try_start_93 .. :try_end_96} :catch_97

    goto :goto_b0

    .line 435
    :catch_97
    move-exception v3

    .line 436
    .local v3, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "loadAllFromFile, unable to close buffered reader!!: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "HipsUtils"

    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b1

    .line 437
    .end local v3  # "e":Ljava/lang/Exception;
    :cond_b0
    :goto_b0
    nop

    :goto_b1
    throw v2
.end method

.method public static putValueIntoSettings(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p0, "key"  # Ljava/lang/String;
    .param p1, "value"  # Ljava/lang/String;

    .line 117
    if-eqz p0, :cond_3c

    if-nez p1, :cond_5

    goto :goto_3c

    .line 121
    :cond_5
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_3b

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_12

    goto :goto_3b

    .line 125
    :cond_12
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    .line 126
    .local v0, "context":Landroid/content/Context;
    if-nez v0, :cond_19

    .line 127
    return-void

    .line 130
    :cond_19
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 132
    .local v1, "token":J
    :try_start_1d
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, p0, p1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_24} :catch_2b
    .catchall {:try_start_1d .. :try_end_24} :catchall_29

    .line 136
    nop

    :goto_25
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 137
    goto :goto_36

    .line 136
    :catchall_29
    move-exception v3

    goto :goto_37

    .line 133
    :catch_2b
    move-exception v3

    .line 134
    .local v3, "e":Ljava/lang/Exception;
    :try_start_2c
    const-string v4, "HipsUtils"

    const-string/jumbo v5, "putValueIntoSettings, unable to put value to settings!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_34
    .catchall {:try_start_2c .. :try_end_34} :catchall_29

    .line 136
    nop

    .end local v3  # "e":Ljava/lang/Exception;
    goto :goto_25

    .line 138
    :goto_36
    return-void

    .line 136
    :goto_37
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    .line 122
    .end local v0  # "context":Landroid/content/Context;
    .end local v1  # "token":J
    :cond_3b
    :goto_3b
    return-void

    .line 118
    :cond_3c
    :goto_3c
    return-void
.end method

.method public static readInfoFromFile(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 6
    .param p0, "path"  # Ljava/lang/String;
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

    .line 462
    const-string v0, "HipsUtils"

    const/4 v1, 0x0

    .line 464
    .local v1, "info":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_3
    invoke-static {p0}, Lcom/android/server/hips/utils/HipsUtils;->loadAllFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 465
    .local v2, "allStrings":Ljava/lang/String;
    invoke-static {v2}, Lcom/android/server/hips/utils/HipsUtils;->splitInfoFromLoadedFile(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    move-object v1, v3

    .line 466
    const-string/jumbo v3, "readInfoFromFile, read the info from file successfully"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_12} :catch_14

    .line 469
    nop

    .end local v2  # "allStrings":Ljava/lang/String;
    goto :goto_2a

    .line 467
    :catch_14
    move-exception v2

    .line 468
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "readInfoFromFile, read the info from file failed!!: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    .end local v2  # "e":Ljava/lang/Exception;
    :goto_2a
    if-nez v1, :cond_32

    .line 471
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v0

    .line 473
    :cond_32
    return-object v1
.end method

.method public static saveInfoToFile(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p0, "info"  # Ljava/lang/String;
    .param p1, "path"  # Ljava/lang/String;

    .line 388
    const/4 v0, 0x0

    .line 390
    .local v0, "outputStream":Ljava/io/OutputStream;
    :try_start_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 391
    .local v1, "infoFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_14

    .line 392
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 393
    const/16 v2, 0x180

    invoke-static {p1, v2}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V

    .line 395
    :cond_14
    sget-object v2, Lcom/android/server/hips/utils/HipsUtils;->mIOSync:Ljava/lang/Object;

    monitor-enter v2
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_17} :catch_40
    .catchall {:try_start_1 .. :try_end_17} :catchall_3e

    .line 396
    :try_start_17
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v0, v3

    .line 397
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/OutputStream;->write([B)V

    .line 398
    monitor-exit v2
    :try_end_25
    .catchall {:try_start_17 .. :try_end_25} :catchall_3b

    .line 399
    :try_start_25
    const-string v2, "HipsUtils"

    const-string/jumbo v3, "saveInfoToFile, save the info to file successfully."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_2d} :catch_40
    .catchall {:try_start_25 .. :try_end_2d} :catchall_3e

    .line 404
    .end local v1  # "infoFile":Ljava/io/File;
    :try_start_2d
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_30} :catch_31

    .line 407
    :goto_30
    goto :goto_4d

    .line 405
    :catch_31
    move-exception v1

    .line 406
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "HipsUtils"

    const-string/jumbo v3, "saveInfoToFile, unable to close output stream!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    .end local v1  # "e":Ljava/lang/Exception;
    goto :goto_4d

    .line 398
    .local v1, "infoFile":Ljava/io/File;
    :catchall_3b
    move-exception v3

    :try_start_3c
    monitor-exit v2
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_3b

    .end local v0  # "outputStream":Ljava/io/OutputStream;
    .end local p0  # "info":Ljava/lang/String;
    .end local p1  # "path":Ljava/lang/String;
    :try_start_3d
    throw v3
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_3e} :catch_40
    .catchall {:try_start_3d .. :try_end_3e} :catchall_3e

    .line 403
    .end local v1  # "infoFile":Ljava/io/File;
    .restart local v0  # "outputStream":Ljava/io/OutputStream;
    .restart local p0  # "info":Ljava/lang/String;
    .restart local p1  # "path":Ljava/lang/String;
    :catchall_3e
    move-exception v1

    goto :goto_4e

    .line 400
    :catch_40
    move-exception v1

    .line 401
    .local v1, "e":Ljava/lang/Exception;
    :try_start_41
    const-string v2, "HipsUtils"

    const-string/jumbo v3, "saveInfoToFile, save the info to file failed!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_49
    .catchall {:try_start_41 .. :try_end_49} :catchall_3e

    .line 404
    .end local v1  # "e":Ljava/lang/Exception;
    :try_start_49
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_4c} :catch_31

    goto :goto_30

    .line 409
    :goto_4d
    return-void

    .line 404
    :goto_4e
    :try_start_4e
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_51} :catch_52

    .line 407
    goto :goto_5b

    .line 405
    :catch_52
    move-exception v2

    .line 406
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "HipsUtils"

    const-string/jumbo v4, "saveInfoToFile, unable to close output stream!!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    .end local v2  # "e":Ljava/lang/Exception;
    :goto_5b
    throw v1
.end method

.method public static saveUsageStatsData(Ljava/lang/String;Ljava/util/Map;)V
    .registers 5
    .param p0, "eventName"  # Ljava/lang/String;
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

    .line 93
    .local p1, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    .line 94
    .local v0, "context":Landroid/content/Context;
    if-nez v0, :cond_f

    .line 95
    const-string v1, "HipsUtils"

    const-string/jumbo v2, "saveUsageStatsData, the context is null, return."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    return-void

    .line 99
    :cond_f
    sget-object v1, Lcom/android/server/hips/utils/HipsUtils;->mUsageStatsProxy:Landroid/nonvccUsageStats/UsageStatsNonVccProxy3;

    if-nez v1, :cond_25

    .line 100
    const-class v1, Lcom/android/server/hips/utils/HipsUtils;

    monitor-enter v1

    .line 101
    :try_start_16
    sget-object v2, Lcom/android/server/hips/utils/HipsUtils;->mUsageStatsProxy:Landroid/nonvccUsageStats/UsageStatsNonVccProxy3;

    if-nez v2, :cond_20

    .line 102
    invoke-static {v0}, Landroid/nonvccUsageStats/UsageStatsNonVccProxy3;->getInstance(Landroid/content/Context;)Landroid/nonvccUsageStats/UsageStatsNonVccProxy3;

    move-result-object v2

    sput-object v2, Lcom/android/server/hips/utils/HipsUtils;->mUsageStatsProxy:Landroid/nonvccUsageStats/UsageStatsNonVccProxy3;

    .line 104
    :cond_20
    monitor-exit v1

    goto :goto_25

    :catchall_22
    move-exception v2

    monitor-exit v1
    :try_end_24
    .catchall {:try_start_16 .. :try_end_24} :catchall_22

    throw v2

    .line 107
    :cond_25
    :goto_25
    sget-object v1, Lcom/android/server/hips/utils/HipsUtils;->mUsageStatsProxy:Landroid/nonvccUsageStats/UsageStatsNonVccProxy3;

    if-nez v1, :cond_32

    .line 108
    const-string v1, "HipsUtils"

    const-string/jumbo v2, "saveUsageStatsData, the mUsageStatsProxy is null, return."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    return-void

    .line 113
    :cond_32
    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2, p1}, Landroid/nonvccUsageStats/UsageStatsNonVccProxy3;->onOsEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 114
    return-void
.end method

.method public static splitInfoFromLoadedFile(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 7
    .param p0, "allStrings"  # Ljava/lang/String;
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

    .line 443
    const-string v0, "HipsUtils"

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 444
    .local v1, "info":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez p0, :cond_a

    .line 445
    return-object v1

    .line 448
    :cond_a
    :try_start_a
    const-string v2, "\\#\\#\\#"

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 449
    .local v2, "strings":[Ljava/lang/String;
    if-eqz v2, :cond_1f

    .line 450
    array-length v3, v2

    const/4 v4, 0x0

    :goto_14
    if-ge v4, v3, :cond_1f

    aget-object v5, v2, v4

    .line 451
    .local v5, "string":Ljava/lang/String;
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 450
    nop

    .end local v5  # "string":Ljava/lang/String;
    add-int/lit8 v4, v4, 0x1

    goto :goto_14

    .line 454
    :cond_1f
    const-string/jumbo v3, "splitInfoFromLoadedFile, read the info from file successfully"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_25} :catch_27

    .line 457
    nop

    .end local v2  # "strings":[Ljava/lang/String;
    goto :goto_3d

    .line 455
    :catch_27
    move-exception v2

    .line 456
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "splitInfoFromLoadedFile, read the info from file failed!!: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    .end local v2  # "e":Ljava/lang/Exception;
    :goto_3d
    return-object v1
.end method

.method public static updateInstalledPkg(Ljava/lang/String;Z)V
    .registers 4
    .param p0, "pkgName"  # Ljava/lang/String;
    .param p1, "isAdd"  # Z

    .line 261
    if-eqz p0, :cond_30

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_30

    .line 264
    :cond_9
    sget-object v0, Lcom/android/server/hips/utils/HipsUtils;->mDataSync:Ljava/lang/Object;

    monitor-enter v0

    .line 265
    if-eqz p1, :cond_1e

    .line 266
    :try_start_e
    sget-object v1, Lcom/android/server/hips/utils/HipsUtils;->mInstalledPkgs:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 267
    monitor-exit v0

    return-void

    .line 269
    :cond_18
    sget-object v1, Lcom/android/server/hips/utils/HipsUtils;->mInstalledPkgs:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2b

    .line 271
    :cond_1e
    sget-object v1, Lcom/android/server/hips/utils/HipsUtils;->mInstalledPkgs:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 272
    sget-object v1, Lcom/android/server/hips/utils/HipsUtils;->mInstalledPkgs:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 275
    :cond_2b
    :goto_2b
    monitor-exit v0

    .line 276
    return-void

    .line 275
    :catchall_2d
    move-exception v1

    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_e .. :try_end_2f} :catchall_2d

    throw v1

    .line 262
    :cond_30
    :goto_30
    return-void
.end method

.method public static updateMap(Ljava/util/HashMap;Ljava/lang/String;)V
    .registers 5
    .param p1, "key"  # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 568
    .local p0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    if-nez p1, :cond_6

    .line 569
    const-string/jumbo p1, "null"

    goto :goto_11

    .line 570
    :cond_6
    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 571
    const-string/jumbo p1, "unknown"

    .line 573
    :cond_11
    :goto_11
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 574
    .local v0, "object":Ljava/lang/Integer;
    const/4 v1, 0x1

    if-eqz v0, :cond_27

    .line 576
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/2addr v2, v1

    .line 577
    .local v2, "tmp":I
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 578
    .end local v2  # "tmp":I
    goto :goto_2e

    .line 579
    :cond_27
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 581
    :goto_2e
    return-void
.end method

.method public static updateSystemSignaturePkg(Ljava/lang/String;Z)V
    .registers 4
    .param p0, "pkgName"  # Ljava/lang/String;
    .param p1, "isAdd"  # Z

    .line 203
    if-eqz p0, :cond_36

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_36

    .line 207
    :cond_9
    sget-object v0, Lcom/android/server/hips/utils/HipsUtils;->mDataSync:Ljava/lang/Object;

    monitor-enter v0

    .line 208
    if-eqz p1, :cond_24

    .line 209
    :try_start_e
    sget-object v1, Lcom/android/server/hips/utils/HipsUtils;->mHasSystemSignaturePkgs:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 210
    monitor-exit v0

    return-void

    .line 212
    :cond_18
    invoke-static {p0}, Lcom/android/server/hips/utils/HipsUtils;->isHasSystemSignatureInner(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_31

    .line 213
    sget-object v1, Lcom/android/server/hips/utils/HipsUtils;->mHasSystemSignaturePkgs:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_31

    .line 216
    :cond_24
    sget-object v1, Lcom/android/server/hips/utils/HipsUtils;->mHasSystemSignaturePkgs:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31

    .line 217
    sget-object v1, Lcom/android/server/hips/utils/HipsUtils;->mHasSystemSignaturePkgs:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 220
    :cond_31
    :goto_31
    monitor-exit v0

    .line 221
    return-void

    .line 220
    :catchall_33
    move-exception v1

    monitor-exit v0
    :try_end_35
    .catchall {:try_start_e .. :try_end_35} :catchall_33

    throw v1

    .line 204
    :cond_36
    :goto_36
    return-void
.end method
