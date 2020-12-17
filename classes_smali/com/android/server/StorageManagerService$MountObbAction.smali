.class Lcom/android/server/StorageManagerService$MountObbAction;
.super Lcom/android/server/StorageManagerService$ObbAction;
.source "StorageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/StorageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MountObbAction"
.end annotation


# instance fields
.field private final mCallingUid:I

.field private final mKey:Ljava/lang/String;

.field private mObbInfo:Landroid/content/res/ObbInfo;

.field final synthetic this$0:Lcom/android/server/StorageManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/StorageManagerService;Lcom/android/server/StorageManagerService$ObbState;Ljava/lang/String;ILandroid/content/res/ObbInfo;)V
    .registers 6
    .param p1, "this$0"  # Lcom/android/server/StorageManagerService;
    .param p2, "obbState"  # Lcom/android/server/StorageManagerService$ObbState;
    .param p3, "key"  # Ljava/lang/String;
    .param p4, "callingUid"  # I
    .param p5, "obbInfo"  # Landroid/content/res/ObbInfo;

    .line 3609
    iput-object p1, p0, Lcom/android/server/StorageManagerService$MountObbAction;->this$0:Lcom/android/server/StorageManagerService;

    .line 3610
    invoke-direct {p0, p1, p2}, Lcom/android/server/StorageManagerService$ObbAction;-><init>(Lcom/android/server/StorageManagerService;Lcom/android/server/StorageManagerService$ObbState;)V

    .line 3611
    iput-object p3, p0, Lcom/android/server/StorageManagerService$MountObbAction;->mKey:Ljava/lang/String;

    .line 3612
    iput p4, p0, Lcom/android/server/StorageManagerService$MountObbAction;->mCallingUid:I

    .line 3613
    iput-object p5, p0, Lcom/android/server/StorageManagerService$MountObbAction;->mObbInfo:Landroid/content/res/ObbInfo;

    .line 3614
    return-void
.end method


# virtual methods
.method public handleExecute()V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/StorageManagerService$ObbException;
        }
    .end annotation

    .line 3618
    iget-object v0, p0, Lcom/android/server/StorageManagerService$MountObbAction;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v0}, Lcom/android/server/StorageManagerService;->access$5300(Lcom/android/server/StorageManagerService;)V

    .line 3620
    iget-object v0, p0, Lcom/android/server/StorageManagerService$MountObbAction;->this$0:Lcom/android/server/StorageManagerService;

    iget-object v1, p0, Lcom/android/server/StorageManagerService$MountObbAction;->mObbInfo:Landroid/content/res/ObbInfo;

    iget-object v1, v1, Landroid/content/res/ObbInfo;->packageName:Ljava/lang/String;

    iget v2, p0, Lcom/android/server/StorageManagerService$MountObbAction;->mCallingUid:I

    invoke-static {v0, v1, v2}, Lcom/android/server/StorageManagerService;->access$5400(Lcom/android/server/StorageManagerService;Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_d2

    .line 3626
    iget-object v0, p0, Lcom/android/server/StorageManagerService$MountObbAction;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v0}, Lcom/android/server/StorageManagerService;->access$5000(Lcom/android/server/StorageManagerService;)Ljava/util/Map;

    move-result-object v0

    monitor-enter v0

    .line 3627
    :try_start_1a
    iget-object v1, p0, Lcom/android/server/StorageManagerService$MountObbAction;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v1}, Lcom/android/server/StorageManagerService;->access$5100(Lcom/android/server/StorageManagerService;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/StorageManagerService$MountObbAction;->mObbState:Lcom/android/server/StorageManagerService$ObbState;

    iget-object v2, v2, Lcom/android/server/StorageManagerService$ObbState;->rawPath:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    .line 3628
    .local v1, "isMounted":Z
    monitor-exit v0
    :try_end_29
    .catchall {:try_start_1a .. :try_end_29} :catchall_cf

    .line 3629
    if-nez v1, :cond_b2

    .line 3636
    iget-object v0, p0, Lcom/android/server/StorageManagerService$MountObbAction;->mKey:Ljava/lang/String;

    if-nez v0, :cond_35

    .line 3637
    const-string/jumbo v0, "none"

    .line 3638
    .local v0, "hashedKey":Ljava/lang/String;
    const-string v2, ""

    .local v2, "binderKey":Ljava/lang/String;
    goto :goto_63

    .line 3641
    .end local v0  # "hashedKey":Ljava/lang/String;
    .end local v2  # "binderKey":Ljava/lang/String;
    :cond_35
    :try_start_35
    const-string v0, "PBKDF2WithHmacSHA1"

    invoke-static {v0}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v0

    .line 3643
    .local v0, "factory":Ljavax/crypto/SecretKeyFactory;
    new-instance v2, Ljavax/crypto/spec/PBEKeySpec;

    iget-object v3, p0, Lcom/android/server/StorageManagerService$MountObbAction;->mKey:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/StorageManagerService$MountObbAction;->mObbInfo:Landroid/content/res/ObbInfo;

    iget-object v4, v4, Landroid/content/res/ObbInfo;->salt:[B

    const/16 v5, 0x400

    const/16 v6, 0x80

    invoke-direct {v2, v3, v4, v5, v6}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C[BII)V

    .line 3645
    .local v2, "ks":Ljava/security/spec/KeySpec;
    invoke-virtual {v0, v2}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v3

    .line 3646
    .local v3, "key":Ljavax/crypto/SecretKey;
    new-instance v4, Ljava/math/BigInteger;

    invoke-interface {v3}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/math/BigInteger;-><init>([B)V

    .line 3647
    .local v4, "bi":Ljava/math/BigInteger;
    const/16 v5, 0x10

    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v5
    :try_end_61
    .catch Ljava/security/GeneralSecurityException; {:try_start_35 .. :try_end_61} :catch_a9

    .line 3648
    .local v5, "hashedKey":Ljava/lang/String;
    move-object v2, v5

    .line 3651
    .end local v0  # "factory":Ljavax/crypto/SecretKeyFactory;
    .end local v3  # "key":Ljavax/crypto/SecretKey;
    .end local v4  # "bi":Ljava/math/BigInteger;
    .local v2, "binderKey":Ljava/lang/String;
    move-object v0, v5

    .line 3655
    .end local v5  # "hashedKey":Ljava/lang/String;
    .local v0, "hashedKey":Ljava/lang/String;
    :goto_63
    :try_start_63
    iget-object v3, p0, Lcom/android/server/StorageManagerService$MountObbAction;->mObbState:Lcom/android/server/StorageManagerService$ObbState;

    iget-object v4, p0, Lcom/android/server/StorageManagerService$MountObbAction;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v4}, Lcom/android/server/StorageManagerService;->access$1400(Lcom/android/server/StorageManagerService;)Landroid/os/IVold;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/StorageManagerService$MountObbAction;->mObbState:Lcom/android/server/StorageManagerService$ObbState;

    iget-object v5, v5, Lcom/android/server/StorageManagerService$ObbState;->canonicalPath:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/server/StorageManagerService$MountObbAction;->mObbState:Lcom/android/server/StorageManagerService$ObbState;

    iget v6, v6, Lcom/android/server/StorageManagerService$ObbState;->ownerGid:I

    invoke-interface {v4, v5, v2, v6}, Landroid/os/IVold;->createObb(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/server/StorageManagerService$ObbState;->volId:Ljava/lang/String;

    .line 3657
    iget-object v3, p0, Lcom/android/server/StorageManagerService$MountObbAction;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v3}, Lcom/android/server/StorageManagerService;->access$1400(Lcom/android/server/StorageManagerService;)Landroid/os/IVold;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/StorageManagerService$MountObbAction;->mObbState:Lcom/android/server/StorageManagerService$ObbState;

    iget-object v4, v4, Lcom/android/server/StorageManagerService$ObbState;->volId:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, -0x1

    invoke-interface {v3, v4, v5, v6}, Landroid/os/IVold;->mount(Ljava/lang/String;II)V

    .line 3662
    iget-object v3, p0, Lcom/android/server/StorageManagerService$MountObbAction;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v3}, Lcom/android/server/StorageManagerService;->access$5000(Lcom/android/server/StorageManagerService;)Ljava/util/Map;

    move-result-object v3

    monitor-enter v3
    :try_end_8f
    .catch Ljava/lang/Exception; {:try_start_63 .. :try_end_8f} :catch_a0

    .line 3663
    :try_start_8f
    iget-object v4, p0, Lcom/android/server/StorageManagerService$MountObbAction;->this$0:Lcom/android/server/StorageManagerService;

    iget-object v5, p0, Lcom/android/server/StorageManagerService$MountObbAction;->mObbState:Lcom/android/server/StorageManagerService$ObbState;

    invoke-static {v4, v5}, Lcom/android/server/StorageManagerService;->access$5500(Lcom/android/server/StorageManagerService;Lcom/android/server/StorageManagerService$ObbState;)V

    .line 3664
    monitor-exit v3
    :try_end_97
    .catchall {:try_start_8f .. :try_end_97} :catchall_9d

    .line 3666
    const/4 v3, 0x1

    :try_start_98
    invoke-virtual {p0, v3}, Lcom/android/server/StorageManagerService$MountObbAction;->notifyObbStateChange(I)V
    :try_end_9b
    .catch Ljava/lang/Exception; {:try_start_98 .. :try_end_9b} :catch_a0

    .line 3669
    nop

    .line 3670
    return-void

    .line 3664
    :catchall_9d
    move-exception v4

    :try_start_9e
    monitor-exit v3
    :try_end_9f
    .catchall {:try_start_9e .. :try_end_9f} :catchall_9d

    .end local v0  # "hashedKey":Ljava/lang/String;
    .end local v1  # "isMounted":Z
    .end local v2  # "binderKey":Ljava/lang/String;
    .end local p0  # "this":Lcom/android/server/StorageManagerService$MountObbAction;
    :try_start_9f
    throw v4
    :try_end_a0
    .catch Ljava/lang/Exception; {:try_start_9f .. :try_end_a0} :catch_a0

    .line 3667
    .restart local v0  # "hashedKey":Ljava/lang/String;
    .restart local v1  # "isMounted":Z
    .restart local v2  # "binderKey":Ljava/lang/String;
    .restart local p0  # "this":Lcom/android/server/StorageManagerService$MountObbAction;
    :catch_a0
    move-exception v3

    .line 3668
    .local v3, "e":Ljava/lang/Exception;
    new-instance v4, Lcom/android/server/StorageManagerService$ObbException;

    const/16 v5, 0x15

    invoke-direct {v4, v5, v3}, Lcom/android/server/StorageManagerService$ObbException;-><init>(ILjava/lang/Throwable;)V

    throw v4

    .line 3649
    .end local v0  # "hashedKey":Ljava/lang/String;
    .end local v2  # "binderKey":Ljava/lang/String;
    .end local v3  # "e":Ljava/lang/Exception;
    :catch_a9
    move-exception v0

    .line 3650
    .local v0, "e":Ljava/security/GeneralSecurityException;
    new-instance v2, Lcom/android/server/StorageManagerService$ObbException;

    const/16 v3, 0x14

    invoke-direct {v2, v3, v0}, Lcom/android/server/StorageManagerService$ObbException;-><init>(ILjava/lang/Throwable;)V

    throw v2

    .line 3630
    .end local v0  # "e":Ljava/security/GeneralSecurityException;
    :cond_b2
    new-instance v0, Lcom/android/server/StorageManagerService$ObbException;

    const/16 v2, 0x18

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attempt to mount OBB which is already mounted: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/StorageManagerService$MountObbAction;->mObbInfo:Landroid/content/res/ObbInfo;

    iget-object v4, v4, Landroid/content/res/ObbInfo;->filename:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/android/server/StorageManagerService$ObbException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 3628
    .end local v1  # "isMounted":Z
    :catchall_cf
    move-exception v1

    :try_start_d0
    monitor-exit v0
    :try_end_d1
    .catchall {:try_start_d0 .. :try_end_d1} :catchall_cf

    throw v1

    .line 3621
    :cond_d2
    new-instance v0, Lcom/android/server/StorageManagerService$ObbException;

    const/16 v1, 0x19

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Denied attempt to mount OBB "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/StorageManagerService$MountObbAction;->mObbInfo:Landroid/content/res/ObbInfo;

    iget-object v3, v3, Landroid/content/res/ObbInfo;->filename:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " which is owned by "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/StorageManagerService$MountObbAction;->mObbInfo:Landroid/content/res/ObbInfo;

    iget-object v3, v3, Landroid/content/res/ObbInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/server/StorageManagerService$ObbException;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 3674
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3675
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "MountObbAction{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3676
    iget-object v1, p0, Lcom/android/server/StorageManagerService$MountObbAction;->mObbState:Lcom/android/server/StorageManagerService$ObbState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3677
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3678
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
