.class Lcom/android/settings/UserCredentialsSettings$CredentialDialogFragment$RemoveCredentialsTask;
.super Landroid/os/AsyncTask;
.source "UserCredentialsSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/UserCredentialsSettings$CredentialDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RemoveCredentialsTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Lcom/android/settings/UserCredentialsSettings$Credential;",
        "Ljava/lang/Void;",
        "[",
        "Lcom/android/settings/UserCredentialsSettings$Credential;",
        ">;"
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private targetFragment:Landroidx/fragment/app/Fragment;

.field final synthetic this$0:Lcom/android/settings/UserCredentialsSettings$CredentialDialogFragment;


# direct methods
.method public constructor <init>(Lcom/android/settings/UserCredentialsSettings$CredentialDialogFragment;Landroid/content/Context;Landroidx/fragment/app/Fragment;)V
    .registers 4

    .line 186
    iput-object p1, p0, Lcom/android/settings/UserCredentialsSettings$CredentialDialogFragment$RemoveCredentialsTask;->this$0:Lcom/android/settings/UserCredentialsSettings$CredentialDialogFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 187
    iput-object p2, p0, Lcom/android/settings/UserCredentialsSettings$CredentialDialogFragment$RemoveCredentialsTask;->context:Landroid/content/Context;

    .line 188
    iput-object p3, p0, Lcom/android/settings/UserCredentialsSettings$CredentialDialogFragment$RemoveCredentialsTask;->targetFragment:Landroidx/fragment/app/Fragment;

    return-void
.end method

.method private deleteWifiCredential(Lcom/android/settings/UserCredentialsSettings$Credential;)V
    .registers 6

    .line 204
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object p0

    .line 205
    invoke-virtual {p1}, Lcom/android/settings/UserCredentialsSettings$Credential;->getStoredTypes()Ljava/util/EnumSet;

    move-result-object v0

    .line 208
    sget-object v1, Lcom/android/settings/UserCredentialsSettings$Credential$Type;->USER_KEY:Lcom/android/settings/UserCredentialsSettings$Credential$Type;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    const/16 v2, 0x3f2

    if-eqz v1, :cond_2a

    .line 209
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "USRPKEY_"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/settings/UserCredentialsSettings$Credential;->getAlias()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v2}, Landroid/security/KeyStore;->delete(Ljava/lang/String;I)Z

    .line 212
    :cond_2a
    sget-object v1, Lcom/android/settings/UserCredentialsSettings$Credential$Type;->USER_CERTIFICATE:Lcom/android/settings/UserCredentialsSettings$Credential$Type;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4a

    .line 213
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "USRCERT_"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/settings/UserCredentialsSettings$Credential;->getAlias()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v2}, Landroid/security/KeyStore;->delete(Ljava/lang/String;I)Z

    .line 216
    :cond_4a
    sget-object v1, Lcom/android/settings/UserCredentialsSettings$Credential$Type;->CA_CERTIFICATE:Lcom/android/settings/UserCredentialsSettings$Credential$Type;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6a

    .line 217
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CACERT_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/settings/UserCredentialsSettings$Credential;->getAlias()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v2}, Landroid/security/KeyStore;->delete(Ljava/lang/String;I)Z

    :cond_6a
    return-void
.end method

.method private removeGrantsAndDelete(Lcom/android/settings/UserCredentialsSettings$Credential;)V
    .registers 4

    const-string v0, "CredentialDialogFragment"

    .line 225
    :try_start_2
    iget-object p0, p0, Lcom/android/settings/UserCredentialsSettings$CredentialDialogFragment$RemoveCredentialsTask;->this$0:Lcom/android/settings/UserCredentialsSettings$CredentialDialogFragment;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroid/security/KeyChain;->bind(Landroid/content/Context;)Landroid/security/KeyChain$KeyChainConnection;

    move-result-object p0
    :try_end_c
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_c} :catch_27

    .line 232
    :try_start_c
    invoke-virtual {p0}, Landroid/security/KeyChain$KeyChainConnection;->getService()Landroid/security/IKeyChainService;

    move-result-object v1

    .line 233
    iget-object p1, p1, Lcom/android/settings/UserCredentialsSettings$Credential;->alias:Ljava/lang/String;

    invoke-interface {v1, p1}, Landroid/security/IKeyChainService;->removeKeyPair(Ljava/lang/String;)Z
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_15} :catch_1b
    .catchall {:try_start_c .. :try_end_15} :catchall_19

    .line 237
    :goto_15
    invoke-virtual {p0}, Landroid/security/KeyChain$KeyChainConnection;->close()V

    goto :goto_22

    :catchall_19
    move-exception p1

    goto :goto_23

    :catch_1b
    move-exception p1

    :try_start_1c
    const-string v1, "Removing credentials"

    .line 235
    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_21
    .catchall {:try_start_1c .. :try_end_21} :catchall_19

    goto :goto_15

    :goto_22
    return-void

    .line 237
    :goto_23
    invoke-virtual {p0}, Landroid/security/KeyChain$KeyChainConnection;->close()V

    throw p1

    :catch_27
    move-exception p0

    const-string p1, "Connecting to KeyChain"

    .line 227
    invoke-static {v0, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 182
    check-cast p1, [Lcom/android/settings/UserCredentialsSettings$Credential;

    invoke-virtual {p0, p1}, Lcom/android/settings/UserCredentialsSettings$CredentialDialogFragment$RemoveCredentialsTask;->doInBackground([Lcom/android/settings/UserCredentialsSettings$Credential;)[Lcom/android/settings/UserCredentialsSettings$Credential;

    return-object p1
.end method

.method protected varargs doInBackground([Lcom/android/settings/UserCredentialsSettings$Credential;)[Lcom/android/settings/UserCredentialsSettings$Credential;
    .registers 6

    .line 193
    array-length v0, p1

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_16

    aget-object v2, p1, v1

    .line 194
    invoke-virtual {v2}, Lcom/android/settings/UserCredentialsSettings$Credential;->isSystem()Z

    move-result v3

    if-eqz v3, :cond_10

    .line 195
    invoke-direct {p0, v2}, Lcom/android/settings/UserCredentialsSettings$CredentialDialogFragment$RemoveCredentialsTask;->removeGrantsAndDelete(Lcom/android/settings/UserCredentialsSettings$Credential;)V

    goto :goto_13

    .line 197
    :cond_10
    invoke-direct {p0, v2}, Lcom/android/settings/UserCredentialsSettings$CredentialDialogFragment$RemoveCredentialsTask;->deleteWifiCredential(Lcom/android/settings/UserCredentialsSettings$Credential;)V

    :goto_13
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_16
    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .line 182
    check-cast p1, [Lcom/android/settings/UserCredentialsSettings$Credential;

    invoke-virtual {p0, p1}, Lcom/android/settings/UserCredentialsSettings$CredentialDialogFragment$RemoveCredentialsTask;->onPostExecute([Lcom/android/settings/UserCredentialsSettings$Credential;)V

    return-void
.end method

.method protected varargs onPostExecute([Lcom/android/settings/UserCredentialsSettings$Credential;)V
    .registers 5

    .line 243
    iget-object v0, p0, Lcom/android/settings/UserCredentialsSettings$CredentialDialogFragment$RemoveCredentialsTask;->targetFragment:Landroidx/fragment/app/Fragment;

    instance-of v1, v0, Lcom/android/settings/UserCredentialsSettings;

    if-eqz v1, :cond_21

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 244
    iget-object p0, p0, Lcom/android/settings/UserCredentialsSettings$CredentialDialogFragment$RemoveCredentialsTask;->targetFragment:Landroidx/fragment/app/Fragment;

    check-cast p0, Lcom/android/settings/UserCredentialsSettings;

    .line 245
    array-length v0, p1

    const/4 v1, 0x0

    :goto_12
    if-ge v1, v0, :cond_1e

    aget-object v2, p1, v1

    .line 246
    iget-object v2, v2, Lcom/android/settings/UserCredentialsSettings$Credential;->alias:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/android/settings/UserCredentialsSettings;->announceRemoval(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 248
    :cond_1e
    invoke-virtual {p0}, Lcom/android/settings/UserCredentialsSettings;->refreshItems()V

    :cond_21
    return-void
.end method