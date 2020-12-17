.class Lcom/android/settings/TrustedCredentialsSettings$AliasOperation;
.super Landroid/os/AsyncTask;
.source "TrustedCredentialsSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/TrustedCredentialsSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AliasOperation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private final mCertHolder:Lcom/android/settings/TrustedCredentialsSettings$CertHolder;

.field final synthetic this$0:Lcom/android/settings/TrustedCredentialsSettings;


# direct methods
.method private constructor <init>(Lcom/android/settings/TrustedCredentialsSettings;Lcom/android/settings/TrustedCredentialsSettings$CertHolder;)V
    .registers 3

    .line 993
    iput-object p1, p0, Lcom/android/settings/TrustedCredentialsSettings$AliasOperation;->this$0:Lcom/android/settings/TrustedCredentialsSettings;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 994
    iput-object p2, p0, Lcom/android/settings/TrustedCredentialsSettings$AliasOperation;->mCertHolder:Lcom/android/settings/TrustedCredentialsSettings$CertHolder;

    .line 995
    invoke-static {p1, p0}, Lcom/android/settings/TrustedCredentialsSettings;->access$3602(Lcom/android/settings/TrustedCredentialsSettings;Lcom/android/settings/TrustedCredentialsSettings$AliasOperation;)Lcom/android/settings/TrustedCredentialsSettings$AliasOperation;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/TrustedCredentialsSettings;Lcom/android/settings/TrustedCredentialsSettings$CertHolder;Lcom/android/settings/TrustedCredentialsSettings$1;)V
    .registers 4

    .line 990
    invoke-direct {p0, p1, p2}, Lcom/android/settings/TrustedCredentialsSettings$AliasOperation;-><init>(Lcom/android/settings/TrustedCredentialsSettings;Lcom/android/settings/TrustedCredentialsSettings$CertHolder;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .registers 4

    .line 1001
    :try_start_0
    iget-object p1, p0, Lcom/android/settings/TrustedCredentialsSettings$AliasOperation;->this$0:Lcom/android/settings/TrustedCredentialsSettings;

    invoke-static {p1}, Lcom/android/settings/TrustedCredentialsSettings;->access$2600(Lcom/android/settings/TrustedCredentialsSettings;)Landroid/util/SparseArray;

    move-result-object p1

    monitor-enter p1
    :try_end_7
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_7} :catch_4a
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_7} :catch_4a
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_7} :catch_4a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_4a

    .line 1002
    :try_start_7
    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings$AliasOperation;->this$0:Lcom/android/settings/TrustedCredentialsSettings;

    invoke-static {v0}, Lcom/android/settings/TrustedCredentialsSettings;->access$2600(Lcom/android/settings/TrustedCredentialsSettings;)Landroid/util/SparseArray;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/TrustedCredentialsSettings$AliasOperation;->mCertHolder:Lcom/android/settings/TrustedCredentialsSettings$CertHolder;

    iget v1, v1, Lcom/android/settings/TrustedCredentialsSettings$CertHolder;->mProfileId:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/security/KeyChain$KeyChainConnection;

    .line 1004
    invoke-virtual {v0}, Landroid/security/KeyChain$KeyChainConnection;->getService()Landroid/security/IKeyChainService;

    move-result-object v0

    .line 1005
    iget-object v1, p0, Lcom/android/settings/TrustedCredentialsSettings$AliasOperation;->mCertHolder:Lcom/android/settings/TrustedCredentialsSettings$CertHolder;

    invoke-static {v1}, Lcom/android/settings/TrustedCredentialsSettings$CertHolder;->access$2000(Lcom/android/settings/TrustedCredentialsSettings$CertHolder;)Z

    move-result v1

    if-eqz v1, :cond_37

    .line 1006
    iget-object v1, p0, Lcom/android/settings/TrustedCredentialsSettings$AliasOperation;->mCertHolder:Lcom/android/settings/TrustedCredentialsSettings$CertHolder;

    invoke-static {v1}, Lcom/android/settings/TrustedCredentialsSettings$CertHolder;->access$3700(Lcom/android/settings/TrustedCredentialsSettings$CertHolder;)Ljava/security/cert/X509Certificate;

    move-result-object v1

    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v1

    .line 1007
    invoke-interface {v0, v1}, Landroid/security/IKeyChainService;->installCaCertificate([B)Ljava/lang/String;

    const/4 v0, 0x1

    .line 1008
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    monitor-exit p1

    return-object v0

    .line 1010
    :cond_37
    iget-object v1, p0, Lcom/android/settings/TrustedCredentialsSettings$AliasOperation;->mCertHolder:Lcom/android/settings/TrustedCredentialsSettings$CertHolder;

    invoke-static {v1}, Lcom/android/settings/TrustedCredentialsSettings$CertHolder;->access$3200(Lcom/android/settings/TrustedCredentialsSettings$CertHolder;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/security/IKeyChainService;->deleteCaCertificate(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    monitor-exit p1

    return-object v0

    :catchall_47
    move-exception v0

    .line 1012
    monitor-exit p1
    :try_end_49
    .catchall {:try_start_7 .. :try_end_49} :catchall_47

    :try_start_49
    throw v0
    :try_end_4a
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_49 .. :try_end_4a} :catch_4a
    .catch Ljava/lang/SecurityException; {:try_start_49 .. :try_end_4a} :catch_4a
    .catch Ljava/lang/IllegalStateException; {:try_start_49 .. :try_end_4a} :catch_4a
    .catch Landroid/os/RemoteException; {:try_start_49 .. :try_end_4a} :catch_4a

    :catch_4a
    move-exception p1

    .line 1015
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error while toggling alias "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/settings/TrustedCredentialsSettings$AliasOperation;->mCertHolder:Lcom/android/settings/TrustedCredentialsSettings$CertHolder;

    invoke-static {p0}, Lcom/android/settings/TrustedCredentialsSettings$CertHolder;->access$3200(Lcom/android/settings/TrustedCredentialsSettings$CertHolder;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "TrustedCredentialsSettings"

    invoke-static {v0, p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    .line 1016
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 990
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/TrustedCredentialsSettings$AliasOperation;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .registers 3

    .line 1022
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_33

    .line 1023
    iget-object p1, p0, Lcom/android/settings/TrustedCredentialsSettings$AliasOperation;->mCertHolder:Lcom/android/settings/TrustedCredentialsSettings$CertHolder;

    invoke-static {p1}, Lcom/android/settings/TrustedCredentialsSettings$CertHolder;->access$3800(Lcom/android/settings/TrustedCredentialsSettings$CertHolder;)Lcom/android/settings/TrustedCredentialsSettings$Tab;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/TrustedCredentialsSettings$Tab;->access$1900(Lcom/android/settings/TrustedCredentialsSettings$Tab;)Z

    move-result p1

    if-eqz p1, :cond_1e

    .line 1024
    iget-object p1, p0, Lcom/android/settings/TrustedCredentialsSettings$AliasOperation;->mCertHolder:Lcom/android/settings/TrustedCredentialsSettings$CertHolder;

    invoke-static {p1}, Lcom/android/settings/TrustedCredentialsSettings$CertHolder;->access$2000(Lcom/android/settings/TrustedCredentialsSettings$CertHolder;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {p1, v0}, Lcom/android/settings/TrustedCredentialsSettings$CertHolder;->access$2002(Lcom/android/settings/TrustedCredentialsSettings$CertHolder;Z)Z

    goto :goto_29

    .line 1026
    :cond_1e
    iget-object p1, p0, Lcom/android/settings/TrustedCredentialsSettings$AliasOperation;->mCertHolder:Lcom/android/settings/TrustedCredentialsSettings$CertHolder;

    invoke-static {p1}, Lcom/android/settings/TrustedCredentialsSettings$CertHolder;->access$3900(Lcom/android/settings/TrustedCredentialsSettings$CertHolder;)Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings$AliasOperation;->mCertHolder:Lcom/android/settings/TrustedCredentialsSettings$CertHolder;

    invoke-virtual {p1, v0}, Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;->remove(Lcom/android/settings/TrustedCredentialsSettings$CertHolder;)V

    .line 1028
    :goto_29
    iget-object p1, p0, Lcom/android/settings/TrustedCredentialsSettings$AliasOperation;->mCertHolder:Lcom/android/settings/TrustedCredentialsSettings$CertHolder;

    invoke-static {p1}, Lcom/android/settings/TrustedCredentialsSettings$CertHolder;->access$3900(Lcom/android/settings/TrustedCredentialsSettings$CertHolder;)Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/BaseExpandableListAdapter;->notifyDataSetChanged()V

    goto :goto_3c

    .line 1031
    :cond_33
    iget-object p1, p0, Lcom/android/settings/TrustedCredentialsSettings$AliasOperation;->mCertHolder:Lcom/android/settings/TrustedCredentialsSettings$CertHolder;

    invoke-static {p1}, Lcom/android/settings/TrustedCredentialsSettings$CertHolder;->access$3900(Lcom/android/settings/TrustedCredentialsSettings$CertHolder;)Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;->load()V

    .line 1033
    :goto_3c
    iget-object p0, p0, Lcom/android/settings/TrustedCredentialsSettings$AliasOperation;->this$0:Lcom/android/settings/TrustedCredentialsSettings;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/settings/TrustedCredentialsSettings;->access$3602(Lcom/android/settings/TrustedCredentialsSettings;Lcom/android/settings/TrustedCredentialsSettings$AliasOperation;)Lcom/android/settings/TrustedCredentialsSettings$AliasOperation;

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .line 990
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/android/settings/TrustedCredentialsSettings$AliasOperation;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
