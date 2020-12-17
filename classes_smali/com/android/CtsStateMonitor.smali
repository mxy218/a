.class public Lcom/android/CtsStateMonitor;
.super Ljava/lang/Object;
.source "CtsStateMonitor.java"


# static fields
.field private static final CTS_APK_SIGNATURE:Ljava/lang/String; = "308204a830820390a003020102020900936eacbe07f201df300d06092a864886f70d0101050500308194310b3009060355040613025553311330110603550408130a43616c69666f726e6961311630140603550407130d4d6f756e7461696e20566965773110300e060355040a1307416e64726f69643110300e060355040b1307416e64726f69643110300e06035504031307416e64726f69643122302006092a864886f70d0109011613616e64726f696440616e64726f69642e636f6d301e170d3038303232393031333334365a170d3335303731373031333334365a308194310b3009060355040613025553311330110603550408130a43616c69666f726e6961311630140603550407130d4d6f756e7461696e20566965773110300e060355040a1307416e64726f69643110300e060355040b1307416e64726f69643110300e06035504031307416e64726f69643122302006092a864886f70d0109011613616e64726f696440616e64726f69642e636f6d30820120300d06092a864886f70d01010105000382010d00308201080282010100d6931904dec60b24b1edc762e0d9d8253e3ecd6ceb1de2ff068ca8e8bca8cd6bd3786ea70aa76ce60ebb0f993559ffd93e77a943e7e83d4b64b8e4fea2d3e656f1e267a81bbfb230b578c20443be4c7218b846f5211586f038a14e89c2be387f8ebecf8fcac3da1ee330c9ea93d0a7c3dc4af350220d50080732e0809717ee6a053359e6a694ec2cb3f284a0a466c87a94d83b31093a67372e2f6412c06e6d42f15818dffe0381cc0cd444da6cddc3b82458194801b32564134fbfde98c9287748dbf5676a540d8154c8bbca07b9e247553311c46b9af76fdeeccc8e69e7c8a2d08e782620943f99727d3c04fe72991d99df9bae38a0b2177fa31d5b6afee91f020103a381fc3081f9301d0603551d0e04160414485900563d272c46ae118605a47419ac09ca8c113081c90603551d230481c13081be8014485900563d272c46ae118605a47419ac09ca8c11a1819aa48197308194310b3009060355040613025553311330110603550408130a43616c69666f726e6961311630140603550407130d4d6f756e7461696e20566965773110300e060355040a1307416e64726f69643110300e060355040b1307416e64726f69643110300e06035504031307416e64726f69643122302006092a864886f70d0109011613616e64726f696440616e64726f69642e636f6d820900936eacbe07f201df300c0603551d13040530030101ff300d06092a864886f70d010105050003820101007aaf968ceb50c441055118d0daabaf015b8a765a27a715a2c2b44f221415ffdace03095abfa42df70708726c2069e5c36eddae0400be29452c084bc27eb6a17eac9dbe182c204eb15311f455d824b656dbe4dc2240912d7586fe88951d01a8feb5ae5a4260535df83431052422468c36e22c2a5ef994d61dd7306ae4c9f6951ba3c12f1d1914ddc61f1a62da2df827f603fea5603b2c540dbd7c019c36bab29a4271c117df523cdbc5f3817a49e0efa60cbd7f74177e7a4f193d43f4220772666e4c4d83e1bd5a86087cf34f2dec21e245ca6c2bb016e683638050d2c430eea7c26a1c49d3760a58ab7f1a82cc938b4831384324bd0401fa12163a50570e684d"

.field private static CTS_PACKAGES:[Ljava/lang/String; = null

.field private static final HIDE_PACKAGEMANAGER:Ljava/lang/String; = "com.meizu.pps"

.field public static MEIZU_CTSINSTALL_PACKAGES_WHITELIST:Ljava/util/ArrayList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static MEIZU_DEFAULT_PERMISSION_PACKAGES_WHITELIST:Ljava/util/ArrayList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final STORAGE_PATH_FILE:Ljava/lang/String; = "/data/system/cts_uid_pkgcount"

.field private static final TAG:Ljava/lang/String; = "CtsStateMonitor"

.field private static final cts_testkey1:Ljava/lang/String; = "308204a830820390a003020102020900be59dcb3d64ce534300d06092a864886f70d0101050500308194310b3009060355040613025553311330110603550408130a43616c69666f726e6961311630140603550407130d4d6f756e7461696e20566965773110300e060355040a1307416e64726f69643110300e060355040b1307416e64726f69643110300e06035504031307416e64726f69643122302006092a864886f70d0109011613616e64726f696440616e64726f69642e636f6d301e170d3039303630373232333832325a170d3336313032333232333832325a308194310b3009060355040613025553311330110603550408130a43616c69666f726e6961311630140603550407130d4d6f756e7461696e20566965773110300e060355040a1307416e64726f69643110300e060355040b1307416e64726f69643110300e06035504031307416e64726f69643122302006092a864886f70d0109011613616e64726f696440616e64726f69642e636f6d30820120300d06092a864886f70d01010105000382010d003082010802820101009e71cf99a4c32735c474822375418b84ac2905e67d03ef424fb704b7be5b2b28f744f1a5adb956a3813ec01febe0a37924059f98a6f6e92b529e80122805f20d1b98bddb56333bad40b0d17a4854912410b93fb111f163fcde872c639f57d78038568fd4f626eb9fd5e2fd97b9dbcea778bbc6868498154c692e0ca180f729e566c38b8cf0e7a6cc9ca4fe21f38d192de53e348701653334f1c18f6cc165242d25d302b5b58f065567c898b155c9c8046d16a679f4e449c8bcb392eb9656718c0f4fd7de3023528b75e000e416344eea5a9af8256040333e291b4d95f0f944444b9bc652fbe1f8290b878d4abea3be5e1555a74d3ca8ca64a98e6fbd1171a413020103a381fc3081f9301d0603551d0e041604141611c4d28f1fd8be21880e982cdb0814036c36d83081c90603551d230481c13081be80141611c4d28f1fd8be21880e982cdb0814036c36d8a1819aa48197308194310b3009060355040613025553311330110603550408130a43616c69666f726e6961311630140603550407130d4d6f756e7461696e20566965773110300e060355040a1307416e64726f69643110300e060355040b1307416e64726f69643110300e06035504031307416e64726f69643122302006092a864886f70d0109011613616e64726f696440616e64726f69642e636f6d820900be59dcb3d64ce534300c0603551d13040530030101ff300d06092a864886f70d0101050500038201010004c8ee2c0c9cc898d7df5d3a8dc545d4d10cc6ac037b259a7d6832db7bd9eb593e4d3d07f991d696f25cfee9dbdc27ab22367af05fa7410359febd75dcfeda663339f907390ce77c2d1a9e5bd66c90c0e5c302d105abb379d3be51338f52b0afa5ad3bac4b6961dc71fde4b5cf166fa0dd43329b1478f2e792f409f6e52511ef7500ba6637cd013698195a8c17be4c64dc57fa7fee47170cffbeaf981f9491f0457c48c106e932b5f835a22870d480639617d051e5a4fff5e90a091912327399491c57637d4cbc952b15809e78362758fe7f813c6044ec32062c0413cb33c73cbba37130152ba4551bf164ad7fc94eb91dff56b05dc7e29c7ffbcaed69dd87fb"

.field private static final cts_testkey2:Ljava/lang/String; = "308204a830820390a003020102020900fbdea3e507b17106300d06092a864886f70d0101050500308194310b3009060355040613025553311330110603550408130a43616c69666f726e6961311630140603550407130d4d6f756e7461696e20566965773110300e060355040a1307416e64726f69643110300e060355040b1307416e64726f69643110300e06035504031307416e64726f69643122302006092a864886f70d0109011613616e64726f696440616e64726f69642e636f6d301e170d3039303630373232333833385a170d3336313032333232333833385a308194310b3009060355040613025553311330110603550408130a43616c69666f726e6961311630140603550407130d4d6f756e7461696e20566965773110300e060355040a1307416e64726f69643110300e060355040b1307416e64726f69643110300e06035504031307416e64726f69643122302006092a864886f70d0109011613616e64726f696440616e64726f69642e636f6d30820120300d06092a864886f70d01010105000382010d00308201080282010100b172708bfe814a69ab9994768566180e1d853e650d9d7e9bbadd4c75afaad35ea4e44f8eb518c2a29fe1fbbeae06d863972c41ca3a316eed885ed3915721233da653c8a966dbeadd66c67f40a278e7b3061da78916b84eeef111bac7d66573b98c29b428b3d498b88ed5cc39466ec97b09d49de1d3dba909e2ab34794d543f3a74721fe9fd9451fef383745872816df225d9fb7a3a2d1ff4dc152d71d8b8d76c928f612c0b392fbd4dd552c15b32ca8e9a764db019001eafa872e775d575a241d27863282b77261923403fc29c4276011d85a9348dc346f4424e3418b79e845d81bcd02844857db5ef3145f5fa05bc20ab82109e0dfad4ce28658eedd77b06fb020103a381fc3081f9301d0603551d0e041604148869c867efb65042d5eeabd3f4a1ab6ebfc021b03081c90603551d230481c13081be80148869c867efb65042d5eeabd3f4a1ab6ebfc021b0a1819aa48197308194310b3009060355040613025553311330110603550408130a43616c69666f726e6961311630140603550407130d4d6f756e7461696e20566965773110300e060355040a1307416e64726f69643110300e060355040b1307416e64726f69643110300e06035504031307416e64726f69643122302006092a864886f70d0109011613616e64726f696440616e64726f69642e636f6d820900fbdea3e507b17106300c0603551d13040530030101ff300d06092a864886f70d010105050003820101003661063ff55342a6d68864e4af3454a4468224883bc57da06b76a3dfe9f6f83ebf508e58cf54b05526a67d54a3eb2645c04e2fd7a61d26ac5801352de28eed046cb361056702cddcbd1b8a2ec378f3fb06744b5a00d6e5420ffe3f2d55569c5ca30d5017ea1a701c08b761a8c55aa6f44e84f2f249e72ac07ca3d84bba7715c4848d01e485f8d82dbb1149a487fbc9f983320aeb6759997dd801373661777ad718c3084e25d8adc45bfa39b1b26730e8b053d6d8ab4a3555bc75c6920723b0a7b056656ffd750fba83fe052cfd3dd327f1ebe5002da4e75ef3a97be4b9e38c637ea25ff70e36881dad683050d39db08e02fe5d5e0471c6ea596693395da2f33b"

.field private static final mIOSync:Ljava/lang/Object;

.field private static sCtsPackageList:Ljava/util/List;

.field private static sUidpackage:Landroid/util/SparseIntArray;


# instance fields
.field private am:Landroid/app/IActivityManager;

.field private mIsCtsRunning:Z

.field private mPM:Landroid/content/pm/PackageManager;

.field private mPackageFilter:Landroid/content/IntentFilter;

.field private mPackageReceiver:Landroid/content/BroadcastReceiver;

.field private mUidRemoveFilter:Landroid/content/IntentFilter;

.field private mUidRemoveReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .registers 29

    .line 42
    const-string v0, "android.test.app"

    const-string v1, "android.trustedvoice.app"

    const-string v2, "android.app.stubs"

    const-string v3, "android.alarmclock.service"

    const-string v4, "com.android.gputest"

    const-string v5, "android.leanbackjank.app"

    const-string v6, "com.replica.replicaisland"

    const-string v7, "com.android.compatibility.common.deviceinfo"

    const-string v8, "android.libcore.runner"

    const-string v9, "android.os.app"

    const-string v10, "android.voiceinteraction.service"

    const-string v11, "android.externalservice.service"

    const-string v12, "android.assist.testapp"

    const-string v13, "android.server.app"

    const-string v14, "android.sample.app"

    const-string v15, "android.cpptools.app"

    const-string v16, "android.taskswitching.appb"

    const-string v17, "android.taskswitching.appa"

    const-string v18, "android.assist.service"

    const-string v19, "android.app.usage.app"

    const-string v20, "com.drawelements.deqp"

    const-string v21, "android.abioverride.app"

    const-string v22, "android.theme.app"

    const-string v23, "android.voiceinteraction.testapp"

    const-string v24, "android.voicesettings.service"

    const-string v25, "android.displaysize.app"

    const-string v26, "android.admin.app"

    const-string v27, "android.backup.app"

    const-string v28, "android.largeapk.app"

    filled-new-array/range {v0 .. v28}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/CtsStateMonitor;->CTS_PACKAGES:[Ljava/lang/String;

    .line 108
    sget-object v0, Lcom/android/CtsStateMonitor;->CTS_PACKAGES:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/CtsStateMonitor;->sCtsPackageList:Ljava/util/List;

    .line 110
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/CtsStateMonitor;->mIOSync:Ljava/lang/Object;

    .line 119
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/CtsStateMonitor;->MEIZU_CTSINSTALL_PACKAGES_WHITELIST:Ljava/util/ArrayList;

    .line 121
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/CtsStateMonitor;->MEIZU_DEFAULT_PERMISSION_PACKAGES_WHITELIST:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 10
    .param p1, "context"  # Landroid/content/Context;

    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/CtsStateMonitor;->mIsCtsRunning:Z

    .line 117
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/CtsStateMonitor;->am:Landroid/app/IActivityManager;

    .line 124
    new-instance v1, Lcom/android/CtsStateMonitor$1;

    invoke-direct {v1, p0}, Lcom/android/CtsStateMonitor$1;-><init>(Lcom/android/CtsStateMonitor;)V

    iput-object v1, p0, Lcom/android/CtsStateMonitor;->mPackageReceiver:Landroid/content/BroadcastReceiver;

    .line 186
    new-instance v1, Lcom/android/CtsStateMonitor$2;

    invoke-direct {v1, p0}, Lcom/android/CtsStateMonitor$2;-><init>(Lcom/android/CtsStateMonitor;)V

    iput-object v1, p0, Lcom/android/CtsStateMonitor;->mUidRemoveReceiver:Landroid/content/BroadcastReceiver;

    .line 205
    const-string/jumbo v1, "persist.sys.cp_on_runtime"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/CtsStateMonitor;->mIsCtsRunning:Z

    .line 206
    iget-boolean v1, p0, Lcom/android/CtsStateMonitor;->mIsCtsRunning:Z

    const-string/jumbo v2, "vendor.meizu.sys.cts_state"

    if-eqz v1, :cond_34

    .line 207
    const-string/jumbo v0, "true"

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    invoke-direct {p0}, Lcom/android/CtsStateMonitor;->getSaveAll()Landroid/util/SparseIntArray;

    move-result-object v0

    sput-object v0, Lcom/android/CtsStateMonitor;->sUidpackage:Landroid/util/SparseIntArray;

    goto :goto_4b

    .line 210
    :cond_34
    new-instance v1, Landroid/util/SparseIntArray;

    const/4 v3, 0x2

    invoke-direct {v1, v3}, Landroid/util/SparseIntArray;-><init>(I)V

    sput-object v1, Lcom/android/CtsStateMonitor;->sUidpackage:Landroid/util/SparseIntArray;

    .line 212
    const-string v1, "false"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "mz_cts_state"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 215
    :goto_4b
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/CtsStateMonitor;->mPackageFilter:Landroid/content/IntentFilter;

    .line 216
    iget-object v0, p0, Lcom/android/CtsStateMonitor;->mPackageFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 217
    iget-object v0, p0, Lcom/android/CtsStateMonitor;->mPackageFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 218
    iget-object v0, p0, Lcom/android/CtsStateMonitor;->mPackageFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 219
    iget-object v3, p0, Lcom/android/CtsStateMonitor;->mPackageReceiver:Landroid/content/BroadcastReceiver;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    iget-object v5, p0, Lcom/android/CtsStateMonitor;->mPackageFilter:Landroid/content/IntentFilter;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 220
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/CtsStateMonitor;->mUidRemoveFilter:Landroid/content/IntentFilter;

    .line 221
    iget-object v0, p0, Lcom/android/CtsStateMonitor;->mUidRemoveFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MANAGED_PROFILE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 222
    iget-object v3, p0, Lcom/android/CtsStateMonitor;->mUidRemoveReceiver:Landroid/content/BroadcastReceiver;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    iget-object v5, p0, Lcom/android/CtsStateMonitor;->mUidRemoveFilter:Landroid/content/IntentFilter;

    invoke-virtual/range {v2 .. v7}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 223
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/CtsStateMonitor;->mPM:Landroid/content/pm/PackageManager;

    .line 224
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/CtsStateMonitor;->am:Landroid/app/IActivityManager;

    .line 225
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "init CtsStateMonitor "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/CtsStateMonitor;->mIsCtsRunning:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " size = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/android/CtsStateMonitor;->sUidpackage:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CtsStateMonitor"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    return-void
.end method

.method static synthetic access$000()Landroid/util/SparseIntArray;
    .registers 1

    .line 40
    sget-object v0, Lcom/android/CtsStateMonitor;->sUidpackage:Landroid/util/SparseIntArray;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/CtsStateMonitor;Ljava/lang/String;)Z
    .registers 3
    .param p0, "x0"  # Lcom/android/CtsStateMonitor;
    .param p1, "x1"  # Ljava/lang/String;

    .line 40
    invoke-direct {p0, p1}, Lcom/android/CtsStateMonitor;->isCtsPackages(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/CtsStateMonitor;Ljava/lang/String;I)Ljava/lang/String;
    .registers 4
    .param p0, "x0"  # Lcom/android/CtsStateMonitor;
    .param p1, "x1"  # Ljava/lang/String;
    .param p2, "x2"  # I

    .line 40
    invoke-direct {p0, p1, p2}, Lcom/android/CtsStateMonitor;->getSignatures(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/CtsStateMonitor;Ljava/lang/String;)Z
    .registers 3
    .param p0, "x0"  # Lcom/android/CtsStateMonitor;
    .param p1, "x1"  # Ljava/lang/String;

    .line 40
    invoke-direct {p0, p1}, Lcom/android/CtsStateMonitor;->isCtsSignatures(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/CtsStateMonitor;)V
    .registers 1
    .param p0, "x0"  # Lcom/android/CtsStateMonitor;

    .line 40
    invoke-direct {p0}, Lcom/android/CtsStateMonitor;->getInstallAndWhitePermissionPackageName()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/CtsStateMonitor;)Z
    .registers 2
    .param p0, "x0"  # Lcom/android/CtsStateMonitor;

    .line 40
    iget-boolean v0, p0, Lcom/android/CtsStateMonitor;->mIsCtsRunning:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/CtsStateMonitor;Z)Z
    .registers 2
    .param p0, "x0"  # Lcom/android/CtsStateMonitor;
    .param p1, "x1"  # Z

    .line 40
    iput-boolean p1, p0, Lcom/android/CtsStateMonitor;->mIsCtsRunning:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/CtsStateMonitor;)Landroid/content/pm/PackageManager;
    .registers 2
    .param p0, "x0"  # Lcom/android/CtsStateMonitor;

    .line 40
    iget-object v0, p0, Lcom/android/CtsStateMonitor;->mPM:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/CtsStateMonitor;Landroid/util/SparseIntArray;)V
    .registers 2
    .param p0, "x0"  # Lcom/android/CtsStateMonitor;
    .param p1, "x1"  # Landroid/util/SparseIntArray;

    .line 40
    invoke-direct {p0, p1}, Lcom/android/CtsStateMonitor;->saveUidPkgCount(Landroid/util/SparseIntArray;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/CtsStateMonitor;Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 3
    .param p0, "x0"  # Lcom/android/CtsStateMonitor;
    .param p1, "x1"  # Ljava/lang/String;

    .line 40
    invoke-direct {p0, p1}, Lcom/android/CtsStateMonitor;->readPackageNameFromStorage(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method private getInstallAndWhitePermissionPackageName()V
    .registers 3

    .line 354
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/CtsStateMonitor$3;

    invoke-direct {v1, p0}, Lcom/android/CtsStateMonitor$3;-><init>(Lcom/android/CtsStateMonitor;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 360
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 361
    return-void
.end method

.method private getSaveAll()Landroid/util/SparseIntArray;
    .registers 9

    .line 230
    const-string v0, "/data/system/cts_uid_pkgcount"

    invoke-static {v0}, Lcom/android/CtsStateMonitor;->loadAllFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 231
    .local v0, "saveUidPkgcount":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x2

    if-eqz v1, :cond_13

    .line 232
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1, v2}, Landroid/util/SparseIntArray;-><init>(I)V

    return-object v1

    .line 234
    :cond_13
    const-string v1, "###"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 235
    .local v1, "uidcounts":[Ljava/lang/String;
    array-length v3, v1

    if-nez v3, :cond_22

    .line 236
    new-instance v3, Landroid/util/SparseIntArray;

    invoke-direct {v3, v2}, Landroid/util/SparseIntArray;-><init>(I)V

    return-object v3

    .line 238
    :cond_22
    new-instance v3, Landroid/util/SparseIntArray;

    array-length v4, v1

    invoke-direct {v3, v4}, Landroid/util/SparseIntArray;-><init>(I)V

    .line 239
    .local v3, "sparseIntArray":Landroid/util/SparseIntArray;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_29
    array-length v5, v1

    if-ge v4, v5, :cond_53

    .line 240
    aget-object v5, v1, v4

    const-string v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 241
    .local v5, "keyvalue":[Ljava/lang/String;
    array-length v6, v5

    if-ne v6, v2, :cond_50

    .line 242
    const/4 v6, 0x0

    aget-object v6, v5, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v7, 0x1

    aget-object v7, v5, v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v3, v6, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 239
    .end local v5  # "keyvalue":[Ljava/lang/String;
    :cond_50
    add-int/lit8 v4, v4, 0x1

    goto :goto_29

    .line 245
    .end local v4  # "i":I
    :cond_53
    return-object v3
.end method

.method private getSignatures(Ljava/lang/String;I)Ljava/lang/String;
    .registers 10
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "uid"  # I

    .line 340
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 342
    .local v0, "sb":Ljava/lang/StringBuilder;
    :try_start_5
    iget-object v1, p0, Lcom/android/CtsStateMonitor;->mPM:Landroid/content/pm/PackageManager;

    const/16 v2, 0x40

    invoke-virtual {v1, p1, v2, p2}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 343
    .local v1, "info":Landroid/content/pm/PackageInfo;
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_11
    if-ge v4, v3, :cond_20

    aget-object v5, v2, v4

    .line 344
    .local v5, "signature":Landroid/content/pm/Signature;
    invoke-virtual {v5}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_1c} :catch_21

    .line 343
    nop

    .end local v5  # "signature":Landroid/content/pm/Signature;
    add-int/lit8 v4, v4, 0x1

    goto :goto_11

    .line 348
    .end local v1  # "info":Landroid/content/pm/PackageInfo;
    :cond_20
    goto :goto_25

    .line 346
    :catch_21
    move-exception v1

    .line 347
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 349
    .end local v1  # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private isCtsPackages(Ljava/lang/String;)Z
    .registers 3
    .param p1, "packageName"  # Ljava/lang/String;

    .line 316
    const-string v0, ".cts"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1b

    sget-object v0, Lcom/android/CtsStateMonitor;->sCtsPackageList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    const-string v0, ".gts"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_19

    goto :goto_1b

    .line 319
    :cond_19
    const/4 v0, 0x0

    return v0

    .line 317
    :cond_1b
    :goto_1b
    const/4 v0, 0x1

    return v0
.end method

.method private isCtsSignatures(Ljava/lang/String;)Z
    .registers 4
    .param p1, "pkgSignature"  # Ljava/lang/String;

    .line 323
    const-string v0, "308204a830820390a003020102020900936eacbe07f201df300d06092a864886f70d0101050500308194310b3009060355040613025553311330110603550408130a43616c69666f726e6961311630140603550407130d4d6f756e7461696e20566965773110300e060355040a1307416e64726f69643110300e060355040b1307416e64726f69643110300e06035504031307416e64726f69643122302006092a864886f70d0109011613616e64726f696440616e64726f69642e636f6d301e170d3038303232393031333334365a170d3335303731373031333334365a308194310b3009060355040613025553311330110603550408130a43616c69666f726e6961311630140603550407130d4d6f756e7461696e20566965773110300e060355040a1307416e64726f69643110300e060355040b1307416e64726f69643110300e06035504031307416e64726f69643122302006092a864886f70d0109011613616e64726f696440616e64726f69642e636f6d30820120300d06092a864886f70d01010105000382010d00308201080282010100d6931904dec60b24b1edc762e0d9d8253e3ecd6ceb1de2ff068ca8e8bca8cd6bd3786ea70aa76ce60ebb0f993559ffd93e77a943e7e83d4b64b8e4fea2d3e656f1e267a81bbfb230b578c20443be4c7218b846f5211586f038a14e89c2be387f8ebecf8fcac3da1ee330c9ea93d0a7c3dc4af350220d50080732e0809717ee6a053359e6a694ec2cb3f284a0a466c87a94d83b31093a67372e2f6412c06e6d42f15818dffe0381cc0cd444da6cddc3b82458194801b32564134fbfde98c9287748dbf5676a540d8154c8bbca07b9e247553311c46b9af76fdeeccc8e69e7c8a2d08e782620943f99727d3c04fe72991d99df9bae38a0b2177fa31d5b6afee91f020103a381fc3081f9301d0603551d0e04160414485900563d272c46ae118605a47419ac09ca8c113081c90603551d230481c13081be8014485900563d272c46ae118605a47419ac09ca8c11a1819aa48197308194310b3009060355040613025553311330110603550408130a43616c69666f726e6961311630140603550407130d4d6f756e7461696e20566965773110300e060355040a1307416e64726f69643110300e060355040b1307416e64726f69643110300e06035504031307416e64726f69643122302006092a864886f70d0109011613616e64726f696440616e64726f69642e636f6d820900936eacbe07f201df300c0603551d13040530030101ff300d06092a864886f70d010105050003820101007aaf968ceb50c441055118d0daabaf015b8a765a27a715a2c2b44f221415ffdace03095abfa42df70708726c2069e5c36eddae0400be29452c084bc27eb6a17eac9dbe182c204eb15311f455d824b656dbe4dc2240912d7586fe88951d01a8feb5ae5a4260535df83431052422468c36e22c2a5ef994d61dd7306ae4c9f6951ba3c12f1d1914ddc61f1a62da2df827f603fea5603b2c540dbd7c019c36bab29a4271c117df523cdbc5f3817a49e0efa60cbd7f74177e7a4f193d43f4220772666e4c4d83e1bd5a86087cf34f2dec21e245ca6c2bb016e683638050d2c430eea7c26a1c49d3760a58ab7f1a82cc938b4831384324bd0401fa12163a50570e684d"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    .line 324
    return v1

    .line 326
    :cond_a
    const-string v0, "308204a830820390a003020102020900be59dcb3d64ce534300d06092a864886f70d0101050500308194310b3009060355040613025553311330110603550408130a43616c69666f726e6961311630140603550407130d4d6f756e7461696e20566965773110300e060355040a1307416e64726f69643110300e060355040b1307416e64726f69643110300e06035504031307416e64726f69643122302006092a864886f70d0109011613616e64726f696440616e64726f69642e636f6d301e170d3039303630373232333832325a170d3336313032333232333832325a308194310b3009060355040613025553311330110603550408130a43616c69666f726e6961311630140603550407130d4d6f756e7461696e20566965773110300e060355040a1307416e64726f69643110300e060355040b1307416e64726f69643110300e06035504031307416e64726f69643122302006092a864886f70d0109011613616e64726f696440616e64726f69642e636f6d30820120300d06092a864886f70d01010105000382010d003082010802820101009e71cf99a4c32735c474822375418b84ac2905e67d03ef424fb704b7be5b2b28f744f1a5adb956a3813ec01febe0a37924059f98a6f6e92b529e80122805f20d1b98bddb56333bad40b0d17a4854912410b93fb111f163fcde872c639f57d78038568fd4f626eb9fd5e2fd97b9dbcea778bbc6868498154c692e0ca180f729e566c38b8cf0e7a6cc9ca4fe21f38d192de53e348701653334f1c18f6cc165242d25d302b5b58f065567c898b155c9c8046d16a679f4e449c8bcb392eb9656718c0f4fd7de3023528b75e000e416344eea5a9af8256040333e291b4d95f0f944444b9bc652fbe1f8290b878d4abea3be5e1555a74d3ca8ca64a98e6fbd1171a413020103a381fc3081f9301d0603551d0e041604141611c4d28f1fd8be21880e982cdb0814036c36d83081c90603551d230481c13081be80141611c4d28f1fd8be21880e982cdb0814036c36d8a1819aa48197308194310b3009060355040613025553311330110603550408130a43616c69666f726e6961311630140603550407130d4d6f756e7461696e20566965773110300e060355040a1307416e64726f69643110300e060355040b1307416e64726f69643110300e06035504031307416e64726f69643122302006092a864886f70d0109011613616e64726f696440616e64726f69642e636f6d820900be59dcb3d64ce534300c0603551d13040530030101ff300d06092a864886f70d0101050500038201010004c8ee2c0c9cc898d7df5d3a8dc545d4d10cc6ac037b259a7d6832db7bd9eb593e4d3d07f991d696f25cfee9dbdc27ab22367af05fa7410359febd75dcfeda663339f907390ce77c2d1a9e5bd66c90c0e5c302d105abb379d3be51338f52b0afa5ad3bac4b6961dc71fde4b5cf166fa0dd43329b1478f2e792f409f6e52511ef7500ba6637cd013698195a8c17be4c64dc57fa7fee47170cffbeaf981f9491f0457c48c106e932b5f835a22870d480639617d051e5a4fff5e90a091912327399491c57637d4cbc952b15809e78362758fe7f813c6044ec32062c0413cb33c73cbba37130152ba4551bf164ad7fc94eb91dff56b05dc7e29c7ffbcaed69dd87fb"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 327
    return v1

    .line 329
    :cond_13
    const-string v0, "308204a830820390a003020102020900fbdea3e507b17106300d06092a864886f70d0101050500308194310b3009060355040613025553311330110603550408130a43616c69666f726e6961311630140603550407130d4d6f756e7461696e20566965773110300e060355040a1307416e64726f69643110300e060355040b1307416e64726f69643110300e06035504031307416e64726f69643122302006092a864886f70d0109011613616e64726f696440616e64726f69642e636f6d301e170d3039303630373232333833385a170d3336313032333232333833385a308194310b3009060355040613025553311330110603550408130a43616c69666f726e6961311630140603550407130d4d6f756e7461696e20566965773110300e060355040a1307416e64726f69643110300e060355040b1307416e64726f69643110300e06035504031307416e64726f69643122302006092a864886f70d0109011613616e64726f696440616e64726f69642e636f6d30820120300d06092a864886f70d01010105000382010d00308201080282010100b172708bfe814a69ab9994768566180e1d853e650d9d7e9bbadd4c75afaad35ea4e44f8eb518c2a29fe1fbbeae06d863972c41ca3a316eed885ed3915721233da653c8a966dbeadd66c67f40a278e7b3061da78916b84eeef111bac7d66573b98c29b428b3d498b88ed5cc39466ec97b09d49de1d3dba909e2ab34794d543f3a74721fe9fd9451fef383745872816df225d9fb7a3a2d1ff4dc152d71d8b8d76c928f612c0b392fbd4dd552c15b32ca8e9a764db019001eafa872e775d575a241d27863282b77261923403fc29c4276011d85a9348dc346f4424e3418b79e845d81bcd02844857db5ef3145f5fa05bc20ab82109e0dfad4ce28658eedd77b06fb020103a381fc3081f9301d0603551d0e041604148869c867efb65042d5eeabd3f4a1ab6ebfc021b03081c90603551d230481c13081be80148869c867efb65042d5eeabd3f4a1ab6ebfc021b0a1819aa48197308194310b3009060355040613025553311330110603550408130a43616c69666f726e6961311630140603550407130d4d6f756e7461696e20566965773110300e060355040a1307416e64726f69643110300e060355040b1307416e64726f69643110300e06035504031307416e64726f69643122302006092a864886f70d0109011613616e64726f696440616e64726f69642e636f6d820900fbdea3e507b17106300c0603551d13040530030101ff300d06092a864886f70d010105050003820101003661063ff55342a6d68864e4af3454a4468224883bc57da06b76a3dfe9f6f83ebf508e58cf54b05526a67d54a3eb2645c04e2fd7a61d26ac5801352de28eed046cb361056702cddcbd1b8a2ec378f3fb06744b5a00d6e5420ffe3f2d55569c5ca30d5017ea1a701c08b761a8c55aa6f44e84f2f249e72ac07ca3d84bba7715c4848d01e485f8d82dbb1149a487fbc9f983320aeb6759997dd801373661777ad718c3084e25d8adc45bfa39b1b26730e8b053d6d8ab4a3555bc75c6920723b0a7b056656ffd750fba83fe052cfd3dd327f1ebe5002da4e75ef3a97be4b9e38c637ea25ff70e36881dad683050d39db08e02fe5d5e0471c6ea596693395da2f33b"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 330
    return v1

    .line 332
    :cond_1c
    const/4 v0, 0x0

    return v0
.end method

.method private static loadAllFromFile(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p0, "path"  # Ljava/lang/String;

    .line 260
    const-string v0, ""

    .line 261
    .local v0, "ret":Ljava/lang/String;
    const/4 v1, 0x0

    .line 263
    .local v1, "reader":Ljava/io/BufferedReader;
    :try_start_3
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 264
    .local v2, "infoFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_c} :catch_4d
    .catchall {:try_start_3 .. :try_end_c} :catchall_4b

    if-nez v3, :cond_21

    .line 265
    nop

    .line 279
    if-eqz v1, :cond_1f

    .line 280
    :try_start_11
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_14} :catch_15

    goto :goto_1f

    .line 282
    :catch_15
    move-exception v3

    .line 283
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "CtsStateMonitor"

    const-string/jumbo v5, "loadAllFromFile, unable to close buffered reader!!"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_20

    .line 284
    .end local v3  # "e":Ljava/lang/Exception;
    :cond_1f
    :goto_1f
    nop

    .line 265
    :goto_20
    return-object v0

    .line 267
    :cond_21
    const/4 v3, 0x0

    .line 268
    .local v3, "line":Ljava/lang/String;
    :try_start_22
    sget-object v4, Lcom/android/CtsStateMonitor;->mIOSync:Ljava/lang/Object;

    monitor-enter v4
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_25} :catch_4d
    .catchall {:try_start_22 .. :try_end_25} :catchall_4b

    .line 269
    :try_start_25
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/FileReader;

    invoke-direct {v6, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v1, v5

    .line 270
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    move-object v3, v5

    .line 271
    monitor-exit v4
    :try_end_36
    .catchall {:try_start_25 .. :try_end_36} :catchall_48

    .line 272
    if-eqz v3, :cond_39

    .line 273
    move-object v0, v3

    .line 279
    .end local v2  # "infoFile":Ljava/io/File;
    .end local v3  # "line":Ljava/lang/String;
    :cond_39
    nop

    .line 280
    :try_start_3a
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_3d} :catch_3e

    .line 284
    :cond_3d
    :goto_3d
    goto :goto_5c

    .line 282
    :catch_3e
    move-exception v2

    .line 283
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "CtsStateMonitor"

    const-string/jumbo v4, "loadAllFromFile, unable to close buffered reader!!"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    .end local v2  # "e":Ljava/lang/Exception;
    goto :goto_5c

    .line 271
    .local v2, "infoFile":Ljava/io/File;
    .restart local v3  # "line":Ljava/lang/String;
    :catchall_48
    move-exception v5

    :try_start_49
    monitor-exit v4
    :try_end_4a
    .catchall {:try_start_49 .. :try_end_4a} :catchall_48

    .end local v0  # "ret":Ljava/lang/String;
    .end local v1  # "reader":Ljava/io/BufferedReader;
    .end local p0  # "path":Ljava/lang/String;
    :try_start_4a
    throw v5
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_4b} :catch_4d
    .catchall {:try_start_4a .. :try_end_4b} :catchall_4b

    .line 278
    .end local v2  # "infoFile":Ljava/io/File;
    .end local v3  # "line":Ljava/lang/String;
    .restart local v0  # "ret":Ljava/lang/String;
    .restart local v1  # "reader":Ljava/io/BufferedReader;
    .restart local p0  # "path":Ljava/lang/String;
    :catchall_4b
    move-exception v2

    goto :goto_5d

    .line 275
    :catch_4d
    move-exception v2

    .line 276
    .local v2, "e":Ljava/lang/Exception;
    :try_start_4e
    const-string v3, "CtsStateMonitor"

    const-string/jumbo v4, "loadAllFromFile, read the info from file failed!!"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_56
    .catchall {:try_start_4e .. :try_end_56} :catchall_4b

    .line 279
    .end local v2  # "e":Ljava/lang/Exception;
    if-eqz v1, :cond_3d

    .line 280
    :try_start_58
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_58 .. :try_end_5b} :catch_3e

    goto :goto_3d

    .line 286
    :goto_5c
    return-object v0

    .line 279
    :goto_5d
    if-eqz v1, :cond_6d

    .line 280
    :try_start_5f
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_62
    .catch Ljava/lang/Exception; {:try_start_5f .. :try_end_62} :catch_63

    goto :goto_6d

    .line 282
    :catch_63
    move-exception v3

    .line 283
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "CtsStateMonitor"

    const-string/jumbo v5, "loadAllFromFile, unable to close buffered reader!!"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6e

    .line 284
    .end local v3  # "e":Ljava/lang/Exception;
    :cond_6d
    :goto_6d
    nop

    :goto_6e
    throw v2
.end method

.method private readPackageNameFromStorage(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 8
    .param p1, "filePath"  # Ljava/lang/String;
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

    .line 364
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 366
    .local v0, "packageNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_5
    new-instance v1, Ljava/io/FileInputStream;

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 367
    .local v1, "fis":Ljava/io/FileInputStream;
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 368
    .local v2, "sBuffer":Ljava/lang/StringBuffer;
    new-instance v3, Ljava/io/DataInputStream;

    invoke-direct {v3, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 369
    .local v3, "dataIO":Ljava/io/DataInputStream;
    const/4 v4, 0x0

    .line 370
    .local v4, "strLine":Ljava/lang/String;
    :goto_1a
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readLine()Ljava/lang/String;

    move-result-object v5

    move-object v4, v5

    if-eqz v5, :cond_25

    .line 371
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1a

    .line 373
    :cond_25
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V

    .line 374
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_2b} :catch_2c

    .line 377
    .end local v1  # "fis":Ljava/io/FileInputStream;
    .end local v2  # "sBuffer":Ljava/lang/StringBuffer;
    .end local v3  # "dataIO":Ljava/io/DataInputStream;
    .end local v4  # "strLine":Ljava/lang/String;
    goto :goto_30

    .line 375
    :catch_2c
    move-exception v1

    .line 376
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 378
    .end local v1  # "e":Ljava/io/IOException;
    :goto_30
    return-object v0
.end method

.method private static saveInfoToFile(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p0, "info"  # Ljava/lang/String;
    .param p1, "path"  # Ljava/lang/String;

    .line 291
    const/4 v0, 0x0

    .line 293
    .local v0, "outputStream":Ljava/io/OutputStream;
    :try_start_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 294
    .local v1, "infoFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_14

    .line 295
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 296
    const/16 v2, 0x1a4

    invoke-static {p1, v2}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V

    .line 298
    :cond_14
    sget-object v2, Lcom/android/CtsStateMonitor;->mIOSync:Ljava/lang/Object;

    monitor-enter v2
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_17} :catch_40
    .catchall {:try_start_1 .. :try_end_17} :catchall_3e

    .line 299
    :try_start_17
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v0, v3

    .line 300
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/OutputStream;->write([B)V

    .line 301
    monitor-exit v2
    :try_end_25
    .catchall {:try_start_17 .. :try_end_25} :catchall_3b

    .line 302
    :try_start_25
    const-string v2, "CtsStateMonitor"

    const-string/jumbo v3, "saveInfoToFile, save file successfully."

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_2d} :catch_40
    .catchall {:try_start_25 .. :try_end_2d} :catchall_3e

    .line 307
    .end local v1  # "infoFile":Ljava/io/File;
    :try_start_2d
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_30} :catch_31

    .line 310
    :goto_30
    goto :goto_4d

    .line 308
    :catch_31
    move-exception v1

    .line 309
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "CtsStateMonitor"

    const-string/jumbo v3, "saveInfoToFile, unable to close output stream!!"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    .end local v1  # "e":Ljava/lang/Exception;
    goto :goto_4d

    .line 301
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

    .line 306
    .end local v1  # "infoFile":Ljava/io/File;
    .restart local v0  # "outputStream":Ljava/io/OutputStream;
    .restart local p0  # "info":Ljava/lang/String;
    .restart local p1  # "path":Ljava/lang/String;
    :catchall_3e
    move-exception v1

    goto :goto_4e

    .line 303
    :catch_40
    move-exception v1

    .line 304
    .local v1, "e":Ljava/lang/Exception;
    :try_start_41
    const-string v2, "CtsStateMonitor"

    const-string/jumbo v3, "saveInfoToFile, save file failed!!"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_49
    .catchall {:try_start_41 .. :try_end_49} :catchall_3e

    .line 307
    .end local v1  # "e":Ljava/lang/Exception;
    :try_start_49
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_4c} :catch_31

    goto :goto_30

    .line 312
    :goto_4d
    return-void

    .line 307
    :goto_4e
    :try_start_4e
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_51} :catch_52

    .line 310
    goto :goto_5b

    .line 308
    :catch_52
    move-exception v2

    .line 309
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "CtsStateMonitor"

    const-string/jumbo v4, "saveInfoToFile, unable to close output stream!!"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    .end local v2  # "e":Ljava/lang/Exception;
    :goto_5b
    throw v1
.end method

.method private saveUidPkgCount(Landroid/util/SparseIntArray;)V
    .registers 7
    .param p1, "uidPkgCount"  # Landroid/util/SparseIntArray;

    .line 249
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 250
    .local v0, "stringBuilder":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    invoke-virtual {p1}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_33

    .line 251
    invoke-virtual {p1, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    .line 252
    .local v2, "uid":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    const-string v3, "###"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    .end local v2  # "uid":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 255
    .end local v1  # "i":I
    :cond_33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/data/system/cts_uid_pkgcount"

    invoke-static {v1, v2}, Lcom/android/CtsStateMonitor;->saveInfoToFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    return-void
.end method


# virtual methods
.method public isCtsRunning()Z
    .registers 2

    .line 336
    iget-boolean v0, p0, Lcom/android/CtsStateMonitor;->mIsCtsRunning:Z

    return v0
.end method
