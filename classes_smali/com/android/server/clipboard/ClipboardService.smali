.class public Lcom/android/server/clipboard/ClipboardService;
.super Lcom/android/server/SystemService;
.source "ClipboardService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;,
        Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;,
        Lcom/android/server/clipboard/ClipboardService$ListenerInfo;
    }
.end annotation


# static fields
.field private static final IS_EMULATOR:Z

.field private static final TAG:Ljava/lang/String; = "ClipboardService"


# instance fields
.field private final mAmInternal:Landroid/app/ActivityManagerInternal;

.field private final mAppOps:Landroid/app/AppOpsManager;

.field private final mAutofillInternal:Landroid/view/autofill/AutofillManagerInternal;

.field private final mClipboards:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;",
            ">;"
        }
    .end annotation
.end field

.field private final mContentCaptureInternal:Lcom/android/server/contentcapture/ContentCaptureManagerInternal;

.field private mHostClipboardMonitor:Lcom/android/server/clipboard/HostClipboardMonitor;

.field private mHostMonitorThread:Ljava/lang/Thread;

.field private final mPermissionOwner:Landroid/os/IBinder;

.field private final mPm:Landroid/content/pm/PackageManager;

.field private final mUgm:Landroid/app/IUriGrantsManager;

.field private final mUgmInternal:Lcom/android/server/uri/UriGrantsManagerInternal;

.field private final mUm:Landroid/os/IUserManager;

.field private final mWm:Lcom/android/server/wm/WindowManagerInternal;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 160
    nop

    .line 161
    const-string/jumbo v0, "ro.kernel.qemu"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/clipboard/ClipboardService;->IS_EMULATOR:Z

    .line 160
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 182
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 173
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/clipboard/ClipboardService;->mHostClipboardMonitor:Lcom/android/server/clipboard/HostClipboardMonitor;

    .line 174
    iput-object p1, p0, Lcom/android/server/clipboard/ClipboardService;->mHostMonitorThread:Ljava/lang/Thread;

    .line 176
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/clipboard/ClipboardService;->mClipboards:Landroid/util/SparseArray;

    .line 184
    const-class p1, Landroid/app/ActivityManagerInternal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManagerInternal;

    iput-object p1, p0, Lcom/android/server/clipboard/ClipboardService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 185
    invoke-static {}, Landroid/app/UriGrantsManager;->getService()Landroid/app/IUriGrantsManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/clipboard/ClipboardService;->mUgm:Landroid/app/IUriGrantsManager;

    .line 186
    const-class p1, Lcom/android/server/uri/UriGrantsManagerInternal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/uri/UriGrantsManagerInternal;

    iput-object p1, p0, Lcom/android/server/clipboard/ClipboardService;->mUgmInternal:Lcom/android/server/uri/UriGrantsManagerInternal;

    .line 187
    const-class p1, Lcom/android/server/wm/WindowManagerInternal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/wm/WindowManagerInternal;

    iput-object p1, p0, Lcom/android/server/clipboard/ClipboardService;->mWm:Lcom/android/server/wm/WindowManagerInternal;

    .line 188
    invoke-virtual {p0}, Lcom/android/server/clipboard/ClipboardService;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/clipboard/ClipboardService;->mPm:Landroid/content/pm/PackageManager;

    .line 189
    const-string/jumbo p1, "user"

    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    check-cast p1, Landroid/os/IUserManager;

    iput-object p1, p0, Lcom/android/server/clipboard/ClipboardService;->mUm:Landroid/os/IUserManager;

    .line 190
    invoke-virtual {p0}, Lcom/android/server/clipboard/ClipboardService;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "appops"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/AppOpsManager;

    iput-object p1, p0, Lcom/android/server/clipboard/ClipboardService;->mAppOps:Landroid/app/AppOpsManager;

    .line 191
    const-class p1, Lcom/android/server/contentcapture/ContentCaptureManagerInternal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/contentcapture/ContentCaptureManagerInternal;

    iput-object p1, p0, Lcom/android/server/clipboard/ClipboardService;->mContentCaptureInternal:Lcom/android/server/contentcapture/ContentCaptureManagerInternal;

    .line 192
    const-class p1, Landroid/view/autofill/AutofillManagerInternal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/autofill/AutofillManagerInternal;

    iput-object p1, p0, Lcom/android/server/clipboard/ClipboardService;->mAutofillInternal:Landroid/view/autofill/AutofillManagerInternal;

    .line 193
    iget-object p1, p0, Lcom/android/server/clipboard/ClipboardService;->mUgmInternal:Lcom/android/server/uri/UriGrantsManagerInternal;

    const-string v0, "clipboard"

    invoke-interface {p1, v0}, Lcom/android/server/uri/UriGrantsManagerInternal;->newUriPermissionOwner(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    .line 194
    iput-object p1, p0, Lcom/android/server/clipboard/ClipboardService;->mPermissionOwner:Landroid/os/IBinder;

    .line 195
    sget-boolean p1, Lcom/android/server/clipboard/ClipboardService;->IS_EMULATOR:Z

    if-eqz p1, :cond_92

    .line 196
    new-instance p1, Lcom/android/server/clipboard/HostClipboardMonitor;

    new-instance v0, Lcom/android/server/clipboard/ClipboardService$1;

    invoke-direct {v0, p0}, Lcom/android/server/clipboard/ClipboardService$1;-><init>(Lcom/android/server/clipboard/ClipboardService;)V

    invoke-direct {p1, v0}, Lcom/android/server/clipboard/HostClipboardMonitor;-><init>(Lcom/android/server/clipboard/HostClipboardMonitor$HostClipboardCallback;)V

    iput-object p1, p0, Lcom/android/server/clipboard/ClipboardService;->mHostClipboardMonitor:Lcom/android/server/clipboard/HostClipboardMonitor;

    .line 210
    new-instance p1, Ljava/lang/Thread;

    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService;->mHostClipboardMonitor:Lcom/android/server/clipboard/HostClipboardMonitor;

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object p1, p0, Lcom/android/server/clipboard/ClipboardService;->mHostMonitorThread:Ljava/lang/Thread;

    .line 211
    iget-object p1, p0, Lcom/android/server/clipboard/ClipboardService;->mHostMonitorThread:Ljava/lang/Thread;

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 213
    :cond_92
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/clipboard/ClipboardService;)Landroid/util/SparseArray;
    .registers 1

    .line 157
    iget-object p0, p0, Lcom/android/server/clipboard/ClipboardService;->mClipboards:Landroid/util/SparseArray;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/server/clipboard/ClipboardService;I)Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;
    .registers 2

    .line 157
    invoke-direct {p0, p1}, Lcom/android/server/clipboard/ClipboardService;->getClipboard(I)Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/server/clipboard/ClipboardService;Ljava/lang/String;I)I
    .registers 3

    .line 157
    invoke-direct {p0, p1, p2}, Lcom/android/server/clipboard/ClipboardService;->getIntendingUid(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lcom/android/server/clipboard/ClipboardService;ILjava/lang/String;II)Z
    .registers 5

    .line 157
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/clipboard/ClipboardService;->clipboardAccessAllowed(ILjava/lang/String;II)Z

    move-result p0

    return p0
.end method

.method static synthetic access$500(Lcom/android/server/clipboard/ClipboardService;Landroid/content/ClipData;I)V
    .registers 3

    .line 157
    invoke-direct {p0, p1, p2}, Lcom/android/server/clipboard/ClipboardService;->checkDataOwnerLocked(Landroid/content/ClipData;I)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/clipboard/ClipboardService;I)Z
    .registers 2

    .line 157
    invoke-direct {p0, p1}, Lcom/android/server/clipboard/ClipboardService;->isDeviceLocked(I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$700(Lcom/android/server/clipboard/ClipboardService;ILjava/lang/String;)V
    .registers 3

    .line 157
    invoke-direct {p0, p1, p2}, Lcom/android/server/clipboard/ClipboardService;->addActiveOwnerLocked(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/clipboard/ClipboardService;Ljava/lang/String;I)I
    .registers 3

    .line 157
    invoke-direct {p0, p1, p2}, Lcom/android/server/clipboard/ClipboardService;->getIntendingUserId(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method private final addActiveOwnerLocked(ILjava/lang/String;)V
    .registers 9

    .line 679
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    .line 680
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .line 681
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 683
    const/4 v4, 0x0

    :try_start_d
    invoke-interface {v0, p2, v4, v1}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 684
    if-eqz v0, :cond_3d

    .line 687
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0, p1}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 694
    goto :goto_5a

    .line 688
    :cond_1e
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Calling uid "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " does not own package "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 685
    :cond_3d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown package "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_54
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_54} :catch_59
    .catchall {:try_start_d .. :try_end_54} :catchall_54

    .line 694
    :catchall_54
    move-exception p1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    .line 691
    :catch_59
    move-exception v0

    .line 694
    :goto_5a
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 695
    nop

    .line 696
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/clipboard/ClipboardService;->getClipboard(I)Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;

    move-result-object v0

    .line 697
    iget-object v1, v0, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    if-eqz v1, :cond_92

    iget-object v1, v0, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->activePermissionOwners:Ljava/util/HashSet;

    invoke-virtual {v1, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_92

    .line 698
    iget-object v1, v0, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    invoke-virtual {v1}, Landroid/content/ClipData;->getItemCount()I

    move-result v1

    .line 699
    nop

    :goto_79
    if-ge v4, v1, :cond_8d

    .line 700
    iget-object v2, v0, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    invoke-virtual {v2, v4}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v2

    iget v3, v0, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClipUid:I

    .line 701
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    .line 700
    invoke-direct {p0, v2, v3, p2, v5}, Lcom/android/server/clipboard/ClipboardService;->grantItemLocked(Landroid/content/ClipData$Item;ILjava/lang/String;I)V

    .line 699
    add-int/lit8 v4, v4, 0x1

    goto :goto_79

    .line 703
    :cond_8d
    iget-object p1, v0, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->activePermissionOwners:Ljava/util/HashSet;

    invoke-virtual {p1, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 705
    :cond_92
    return-void
.end method

.method private final checkDataOwnerLocked(Landroid/content/ClipData;I)V
    .registers 6

    .line 643
    invoke-virtual {p1}, Landroid/content/ClipData;->getItemCount()I

    move-result v0

    .line 644
    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_11

    .line 645
    invoke-virtual {p1, v1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v2

    invoke-direct {p0, v2, p2}, Lcom/android/server/clipboard/ClipboardService;->checkItemOwnerLocked(Landroid/content/ClipData$Item;I)V

    .line 644
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 647
    :cond_11
    return-void
.end method

.method private final checkItemOwnerLocked(Landroid/content/ClipData$Item;I)V
    .registers 4

    .line 633
    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 634
    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/android/server/clipboard/ClipboardService;->checkUriOwnerLocked(Landroid/net/Uri;I)V

    .line 636
    :cond_d
    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getIntent()Landroid/content/Intent;

    move-result-object p1

    .line 637
    if-eqz p1, :cond_20

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_20

    .line 638
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/android/server/clipboard/ClipboardService;->checkUriOwnerLocked(Landroid/net/Uri;I)V

    .line 640
    :cond_20
    return-void
.end method

.method private final checkUriOwnerLocked(Landroid/net/Uri;I)V
    .registers 11

    .line 618
    if-eqz p1, :cond_31

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "content"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    goto :goto_31

    .line 620
    :cond_f
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 623
    :try_start_13
    iget-object v2, p0, Lcom/android/server/clipboard/ClipboardService;->mUgmInternal:Lcom/android/server/uri/UriGrantsManagerInternal;

    const/4 v4, 0x0

    .line 624
    invoke-static {p1}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v5

    const/4 v6, 0x1

    .line 626
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    invoke-static {p1, v3}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;I)I

    move-result v7

    .line 623
    move v3, p2

    invoke-interface/range {v2 .. v7}, Lcom/android/server/uri/UriGrantsManagerInternal;->checkGrantUriPermission(ILjava/lang/String;Landroid/net/Uri;II)I
    :try_end_27
    .catchall {:try_start_13 .. :try_end_27} :catchall_2c

    .line 628
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 629
    nop

    .line 630
    return-void

    .line 628
    :catchall_2c
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    .line 618
    :cond_31
    :goto_31
    return-void
.end method

.method private clipboardAccessAllowed(ILjava/lang/String;II)Z
    .registers 9

    .line 744
    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService;->mAppOps:Landroid/app/AppOpsManager;

    invoke-virtual {v0, p1, p3, p2}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 745
    return v1

    .line 748
    :cond_a
    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService;->mPm:Landroid/content/pm/PackageManager;

    const-string v2, "android.permission.READ_CLIPBOARD_IN_BACKGROUND"

    invoke-virtual {v0, v2, p2}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_16

    .line 750
    return v2

    .line 753
    :cond_16
    invoke-virtual {p0}, Lcom/android/server/clipboard/ClipboardService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "default_input_method"

    invoke-static {v0, v3, p4}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 755
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_39

    .line 756
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 757
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 758
    return v2

    .line 762
    :cond_39
    const/16 v0, 0x1d

    if-eq p1, v0, :cond_59

    const/16 p2, 0x1e

    if-ne p1, p2, :cond_42

    .line 797
    return v2

    .line 799
    :cond_42
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Unknown clipboard appop "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 769
    :cond_59
    iget-object p1, p0, Lcom/android/server/clipboard/ClipboardService;->mWm:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {p1, p3}, Lcom/android/server/wm/WindowManagerInternal;->isUidFocused(I)Z

    move-result p1

    if-nez p1, :cond_67

    .line 770
    invoke-direct {p0, p2}, Lcom/android/server/clipboard/ClipboardService;->isInternalSysWindowAppWithWindowFocus(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_68

    :cond_67
    move v1, v2

    .line 771
    :cond_68
    if-nez v1, :cond_72

    iget-object p1, p0, Lcom/android/server/clipboard/ClipboardService;->mContentCaptureInternal:Lcom/android/server/contentcapture/ContentCaptureManagerInternal;

    if-eqz p1, :cond_72

    .line 778
    invoke-virtual {p1, p3, p4}, Lcom/android/server/contentcapture/ContentCaptureManagerInternal;->isContentCaptureServiceForUser(II)Z

    move-result v1

    .line 780
    :cond_72
    if-nez v1, :cond_7c

    iget-object p1, p0, Lcom/android/server/clipboard/ClipboardService;->mAutofillInternal:Landroid/view/autofill/AutofillManagerInternal;

    if-eqz p1, :cond_7c

    .line 787
    invoke-virtual {p1, p3, p4}, Landroid/view/autofill/AutofillManagerInternal;->isAugmentedAutofillServiceForUser(II)Z

    move-result v1

    .line 789
    :cond_7c
    if-nez v1, :cond_9c

    .line 790
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Denying clipboard access to "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", application is not in focus neither is a system service for user "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ClipboardService"

    invoke-static {p2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 794
    :cond_9c
    return v1
.end method

.method private getClipboard(I)Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;
    .registers 5

    .line 468
    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService;->mClipboards:Landroid/util/SparseArray;

    monitor-enter v0

    .line 469
    :try_start_3
    iget-object v1, p0, Lcom/android/server/clipboard/ClipboardService;->mClipboards:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;

    .line 470
    if-nez v1, :cond_17

    .line 471
    new-instance v1, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;

    invoke-direct {v1, p0, p1}, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;-><init>(Lcom/android/server/clipboard/ClipboardService;I)V

    .line 472
    iget-object v2, p0, Lcom/android/server/clipboard/ClipboardService;->mClipboards:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 474
    :cond_17
    monitor-exit v0

    return-object v1

    .line 475
    :catchall_19
    move-exception p1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw p1
.end method

.method private getIntendingUid(Ljava/lang/String;I)I
    .registers 3

    .line 324
    invoke-direct {p0, p1, p2}, Lcom/android/server/clipboard/ClipboardService;->getIntendingUserId(Ljava/lang/String;I)I

    move-result p1

    .line 325
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p2

    invoke-static {p2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p2

    .line 324
    invoke-static {p1, p2}, Landroid/os/UserHandle;->getUid(II)I

    move-result p1

    return p1
.end method

.method private getIntendingUserId(Ljava/lang/String;I)I
    .registers 13

    .line 302
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 303
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 304
    invoke-static {}, Landroid/os/UserManager;->supportsMultipleUsers()Z

    move-result v1

    if-eqz v1, :cond_27

    if-ne v0, p2, :cond_11

    goto :goto_27

    .line 308
    :cond_11
    nop

    .line 309
    iget-object v2, p0, Lcom/android/server/clipboard/ClipboardService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    .line 310
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    const/4 v6, 0x0

    const/4 v7, 0x2

    .line 309
    const-string v8, "checkClipboardServiceCallingUser"

    move v5, p2

    move-object v9, p1

    invoke-virtual/range {v2 .. v9}, Landroid/app/ActivityManagerInternal;->handleIncomingUser(IIIZILjava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 313
    return p1

    .line 305
    :cond_27
    :goto_27
    return v0
.end method

.method private final grantItemLocked(Landroid/content/ClipData$Item;ILjava/lang/String;I)V
    .registers 6

    .line 669
    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 670
    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3, p4}, Lcom/android/server/clipboard/ClipboardService;->grantUriLocked(Landroid/net/Uri;ILjava/lang/String;I)V

    .line 672
    :cond_d
    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getIntent()Landroid/content/Intent;

    move-result-object p1

    .line 673
    if-eqz p1, :cond_20

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_20

    .line 674
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/clipboard/ClipboardService;->grantUriLocked(Landroid/net/Uri;ILjava/lang/String;I)V

    .line 676
    :cond_20
    return-void
.end method

.method private final grantUriLocked(Landroid/net/Uri;ILjava/lang/String;I)V
    .registers 15

    .line 651
    if-eqz p1, :cond_36

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "content"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    goto :goto_36

    .line 653
    :cond_f
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 655
    :try_start_13
    iget-object v2, p0, Lcom/android/server/clipboard/ClipboardService;->mUgm:Landroid/app/IUriGrantsManager;

    iget-object v3, p0, Lcom/android/server/clipboard/ClipboardService;->mPermissionOwner:Landroid/os/IBinder;

    .line 656
    invoke-static {p1}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v6

    const/4 v7, 0x1

    .line 658
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    invoke-static {p1, v4}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;I)I

    move-result v8

    .line 655
    move v4, p2

    move-object v5, p3

    move v9, p4

    invoke-interface/range {v2 .. v9}, Landroid/app/IUriGrantsManager;->grantUriPermissionFromOwner(Landroid/os/IBinder;ILjava/lang/String;Landroid/net/Uri;III)V
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_2a} :catch_30
    .catchall {:try_start_13 .. :try_end_2a} :catchall_2b

    goto :goto_31

    .line 663
    :catchall_2b
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    .line 660
    :catch_30
    move-exception p1

    .line 663
    :goto_31
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 664
    nop

    .line 665
    return-void

    .line 651
    :cond_36
    :goto_36
    return-void
.end method

.method private hasRestriction(Ljava/lang/String;I)Z
    .registers 4

    .line 497
    :try_start_0
    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService;->mUm:Landroid/os/IUserManager;

    invoke-interface {v0, p1, p2}, Landroid/os/IUserManager;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result p1
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return p1

    .line 498
    :catch_7
    move-exception p1

    .line 499
    const-string p2, "ClipboardService"

    const-string v0, "Remote Exception calling UserManager.getUserRestrictions: "

    invoke-static {p2, v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 501
    const/4 p1, 0x1

    return p1
.end method

.method private isDeviceLocked(I)Z
    .registers 6

    .line 607
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 609
    :try_start_4
    invoke-virtual {p0}, Lcom/android/server/clipboard/ClipboardService;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Landroid/app/KeyguardManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/KeyguardManager;

    .line 611
    if-eqz v2, :cond_1a

    invoke-virtual {v2, p1}, Landroid/app/KeyguardManager;->isDeviceLocked(I)Z

    move-result p1
    :try_end_16
    .catchall {:try_start_4 .. :try_end_16} :catchall_1f

    if-eqz p1, :cond_1a

    const/4 p1, 0x1

    goto :goto_1b

    :cond_1a
    const/4 p1, 0x0

    .line 613
    :goto_1b
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 611
    return p1

    .line 613
    :catchall_1f
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method private isInternalSysWindowAppWithWindowFocus(Ljava/lang/String;)Z
    .registers 4

    .line 272
    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService;->mPm:Landroid/content/pm/PackageManager;

    const-string v1, "android.permission.INTERNAL_SYSTEM_WINDOW"

    invoke-virtual {v0, v1, p1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_18

    .line 274
    iget-object p1, p0, Lcom/android/server/clipboard/ClipboardService;->mWm:Lcom/android/server/wm/WindowManagerInternal;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/server/wm/WindowManagerInternal;->isUidFocused(I)Z

    move-result p1

    if-eqz p1, :cond_18

    .line 275
    const/4 p1, 0x1

    return p1

    .line 279
    :cond_18
    const/4 p1, 0x0

    return p1
.end method

.method private final revokeItemLocked(Landroid/content/ClipData$Item;I)V
    .registers 4

    .line 722
    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 723
    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/android/server/clipboard/ClipboardService;->revokeUriLocked(Landroid/net/Uri;I)V

    .line 725
    :cond_d
    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getIntent()Landroid/content/Intent;

    move-result-object p1

    .line 726
    if-eqz p1, :cond_20

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_20

    .line 727
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/android/server/clipboard/ClipboardService;->revokeUriLocked(Landroid/net/Uri;I)V

    .line 729
    :cond_20
    return-void
.end method

.method private final revokeUriLocked(Landroid/net/Uri;I)V
    .registers 9

    .line 708
    if-eqz p1, :cond_31

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "content"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    goto :goto_31

    .line 710
    :cond_f
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 712
    :try_start_13
    iget-object v2, p0, Lcom/android/server/clipboard/ClipboardService;->mUgmInternal:Lcom/android/server/uri/UriGrantsManagerInternal;

    iget-object v3, p0, Lcom/android/server/clipboard/ClipboardService;->mPermissionOwner:Landroid/os/IBinder;

    .line 713
    invoke-static {p1}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x1

    .line 715
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p2

    invoke-static {p1, p2}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;I)I

    move-result p1

    .line 712
    invoke-interface {v2, v3, v4, v5, p1}, Lcom/android/server/uri/UriGrantsManagerInternal;->revokeUriPermissionFromOwner(Landroid/os/IBinder;Landroid/net/Uri;II)V
    :try_end_27
    .catchall {:try_start_13 .. :try_end_27} :catchall_2c

    .line 717
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 718
    nop

    .line 719
    return-void

    .line 717
    :catchall_2c
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    .line 708
    :cond_31
    :goto_31
    return-void
.end method

.method private final revokeUris(Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;)V
    .registers 6

    .line 732
    iget-object v0, p1, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    if-nez v0, :cond_5

    .line 733
    return-void

    .line 735
    :cond_5
    iget-object v0, p1, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    invoke-virtual {v0}, Landroid/content/ClipData;->getItemCount()I

    move-result v0

    .line 736
    const/4 v1, 0x0

    :goto_c
    if-ge v1, v0, :cond_1c

    .line 737
    iget-object v2, p1, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    invoke-virtual {v2, v1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v2

    iget v3, p1, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClipUid:I

    invoke-direct {p0, v2, v3}, Lcom/android/server/clipboard/ClipboardService;->revokeItemLocked(Landroid/content/ClipData$Item;I)V

    .line 736
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 739
    :cond_1c
    return-void
.end method


# virtual methods
.method getRelatedProfiles(I)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation

    .line 480
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 482
    :try_start_4
    iget-object v2, p0, Lcom/android/server/clipboard/ClipboardService;->mUm:Landroid/os/IUserManager;

    const/4 v3, 0x1

    invoke-interface {v2, p1, v3}, Landroid/os/IUserManager;->getProfiles(IZ)Ljava/util/List;

    move-result-object p1
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_b} :catch_12
    .catchall {:try_start_4 .. :try_end_b} :catchall_10

    .line 487
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 488
    nop

    .line 489
    return-object p1

    .line 487
    :catchall_10
    move-exception p1

    goto :goto_2e

    .line 483
    :catch_12
    move-exception p1

    .line 484
    :try_start_13
    const-string v2, "ClipboardService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Remote Exception calling UserManager: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_29
    .catchall {:try_start_13 .. :try_end_29} :catchall_10

    .line 485
    const/4 p1, 0x0

    .line 487
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 485
    return-object p1

    .line 487
    :goto_2e
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public onCleanupUser(I)V
    .registers 4

    .line 222
    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService;->mClipboards:Landroid/util/SparseArray;

    monitor-enter v0

    .line 223
    :try_start_3
    iget-object v1, p0, Lcom/android/server/clipboard/ClipboardService;->mClipboards:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 224
    monitor-exit v0

    .line 225
    return-void

    .line 224
    :catchall_a
    move-exception p1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p1
.end method

.method public onStart()V
    .registers 3

    .line 217
    new-instance v0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;-><init>(Lcom/android/server/clipboard/ClipboardService;Lcom/android/server/clipboard/ClipboardService$1;)V

    const-string v1, "clipboard"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/clipboard/ClipboardService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 218
    return-void
.end method

.method setPrimaryClipInternal(Landroid/content/ClipData;I)V
    .registers 11

    .line 507
    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService;->mHostClipboardMonitor:Lcom/android/server/clipboard/HostClipboardMonitor;

    const/4 v1, 0x0

    if-eqz v0, :cond_26

    .line 508
    if-nez p1, :cond_d

    .line 510
    const-string v2, ""

    invoke-virtual {v0, v2}, Lcom/android/server/clipboard/HostClipboardMonitor;->setHostClipboard(Ljava/lang/String;)V

    goto :goto_26

    .line 511
    :cond_d
    invoke-virtual {p1}, Landroid/content/ClipData;->getItemCount()I

    move-result v0

    if-lez v0, :cond_26

    .line 512
    invoke-virtual {p1, v1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 513
    if-eqz v0, :cond_26

    .line 514
    iget-object v2, p0, Lcom/android/server/clipboard/ClipboardService;->mHostClipboardMonitor:Lcom/android/server/clipboard/HostClipboardMonitor;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/android/server/clipboard/HostClipboardMonitor;->setHostClipboard(Ljava/lang/String;)V

    .line 520
    :cond_26
    :goto_26
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 521
    invoke-direct {p0, v0}, Lcom/android/server/clipboard/ClipboardService;->getClipboard(I)Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;

    move-result-object v2

    invoke-virtual {p0, v2, p1, p2}, Lcom/android/server/clipboard/ClipboardService;->setPrimaryClipInternal(Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;Landroid/content/ClipData;I)V

    .line 524
    invoke-virtual {p0, v0}, Lcom/android/server/clipboard/ClipboardService;->getRelatedProfiles(I)Ljava/util/List;

    move-result-object v2

    .line 525
    if-eqz v2, :cond_8d

    .line 526
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    .line 527
    const/4 v4, 0x1

    if-le v3, v4, :cond_8d

    .line 528
    const-string/jumbo v5, "no_cross_profile_copy_paste"

    invoke-direct {p0, v5, v0}, Lcom/android/server/clipboard/ClipboardService;->hasRestriction(Ljava/lang/String;I)Z

    move-result v5

    .line 532
    xor-int/2addr v5, v4

    if-nez v5, :cond_4a

    .line 533
    const/4 p1, 0x0

    goto :goto_6c

    .line 534
    :cond_4a
    if-nez p1, :cond_4d

    goto :goto_6c

    .line 543
    :cond_4d
    new-instance v5, Landroid/content/ClipData;

    invoke-direct {v5, p1}, Landroid/content/ClipData;-><init>(Landroid/content/ClipData;)V

    .line 544
    invoke-virtual {v5}, Landroid/content/ClipData;->getItemCount()I

    move-result p1

    sub-int/2addr p1, v4

    :goto_57
    if-ltz p1, :cond_68

    .line 545
    new-instance v6, Landroid/content/ClipData$Item;

    invoke-virtual {v5, p1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/content/ClipData$Item;-><init>(Landroid/content/ClipData$Item;)V

    invoke-virtual {v5, p1, v6}, Landroid/content/ClipData;->setItemAt(ILandroid/content/ClipData$Item;)V

    .line 544
    add-int/lit8 p1, p1, -0x1

    goto :goto_57

    .line 547
    :cond_68
    invoke-virtual {v5, v0}, Landroid/content/ClipData;->fixUrisLight(I)V

    move-object p1, v5

    .line 549
    :goto_6c
    nop

    :goto_6d
    if-ge v1, v3, :cond_8d

    .line 550
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;

    iget v5, v5, Landroid/content/pm/UserInfo;->id:I

    .line 551
    if-eq v5, v0, :cond_8a

    .line 552
    const-string/jumbo v6, "no_sharing_into_profile"

    invoke-direct {p0, v6, v5}, Lcom/android/server/clipboard/ClipboardService;->hasRestriction(Ljava/lang/String;I)Z

    move-result v6

    .line 554
    xor-int/2addr v6, v4

    if-eqz v6, :cond_8a

    .line 555
    invoke-direct {p0, v5}, Lcom/android/server/clipboard/ClipboardService;->getClipboard(I)Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;

    move-result-object v5

    invoke-virtual {p0, v5, p1, p2}, Lcom/android/server/clipboard/ClipboardService;->setPrimaryClipInternal(Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;Landroid/content/ClipData;I)V

    .line 549
    :cond_8a
    add-int/lit8 v1, v1, 0x1

    goto :goto_6d

    .line 561
    :cond_8d
    return-void
.end method

.method setPrimaryClipInternal(Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;Landroid/content/ClipData;I)V
    .registers 10

    .line 565
    invoke-direct {p0, p1}, Lcom/android/server/clipboard/ClipboardService;->revokeUris(Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;)V

    .line 566
    iget-object v0, p1, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->activePermissionOwners:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 567
    if-nez p2, :cond_f

    iget-object v0, p1, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    if-nez v0, :cond_f

    .line 568
    return-void

    .line 570
    :cond_f
    iput-object p2, p1, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    .line 571
    if-eqz p2, :cond_16

    .line 572
    iput p3, p1, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClipUid:I

    goto :goto_1a

    .line 574
    :cond_16
    const/16 p3, 0x270f

    iput p3, p1, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClipUid:I

    .line 576
    :goto_1a
    if-eqz p2, :cond_29

    .line 577
    invoke-virtual {p2}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object p2

    .line 578
    if-eqz p2, :cond_29

    .line 579
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Landroid/content/ClipDescription;->setTimestamp(J)V

    .line 582
    :cond_29
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide p2

    .line 583
    iget-object v0, p1, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClipListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 585
    const/4 v1, 0x0

    :goto_34
    if-ge v1, v0, :cond_6a

    .line 587
    :try_start_36
    iget-object v2, p1, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClipListeners:Landroid/os/RemoteCallbackList;

    .line 588
    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/clipboard/ClipboardService$ListenerInfo;

    .line 590
    const/16 v3, 0x1d

    iget-object v4, v2, Lcom/android/server/clipboard/ClipboardService$ListenerInfo;->mPackageName:Ljava/lang/String;

    iget v5, v2, Lcom/android/server/clipboard/ClipboardService$ListenerInfo;->mUid:I

    iget v2, v2, Lcom/android/server/clipboard/ClipboardService$ListenerInfo;->mUid:I

    .line 591
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 590
    invoke-direct {p0, v3, v4, v5, v2}, Lcom/android/server/clipboard/ClipboardService;->clipboardAccessAllowed(ILjava/lang/String;II)Z

    move-result v2

    if-eqz v2, :cond_5b

    .line 592
    iget-object v2, p1, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClipListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/content/IOnPrimaryClipChangedListener;

    .line 593
    invoke-interface {v2}, Landroid/content/IOnPrimaryClipChangedListener;->dispatchPrimaryClipChanged()V
    :try_end_5b
    .catch Landroid/os/RemoteException; {:try_start_36 .. :try_end_5b} :catch_66
    .catchall {:try_start_36 .. :try_end_5b} :catchall_5c

    .line 598
    :cond_5b
    goto :goto_67

    .line 601
    :catchall_5c
    move-exception v0

    iget-object p1, p1, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClipListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 602
    invoke-static {p2, p3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 595
    :catch_66
    move-exception v2

    .line 585
    :goto_67
    add-int/lit8 v1, v1, 0x1

    goto :goto_34

    .line 601
    :cond_6a
    iget-object p1, p1, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClipListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 602
    invoke-static {p2, p3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 603
    nop

    .line 604
    return-void
.end method
