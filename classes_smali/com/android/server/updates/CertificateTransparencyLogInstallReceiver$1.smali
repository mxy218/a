.class Lcom/android/server/updates/CertificateTransparencyLogInstallReceiver$1;
.super Ljava/lang/Object;
.source "CertificateTransparencyLogInstallReceiver.java"

# interfaces
.implements Ljava/io/FileFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/updates/CertificateTransparencyLogInstallReceiver;->deleteOldLogDirectories()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/updates/CertificateTransparencyLogInstallReceiver;

.field final synthetic val$currentTarget:Ljava/io/File;


# direct methods
.method constructor <init>(Lcom/android/server/updates/CertificateTransparencyLogInstallReceiver;Ljava/io/File;)V
    .registers 3

    .line 171
    iput-object p1, p0, Lcom/android/server/updates/CertificateTransparencyLogInstallReceiver$1;->this$0:Lcom/android/server/updates/CertificateTransparencyLogInstallReceiver;

    iput-object p2, p0, Lcom/android/server/updates/CertificateTransparencyLogInstallReceiver$1;->val$currentTarget:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .registers 3

    .line 174
    iget-object v0, p0, Lcom/android/server/updates/CertificateTransparencyLogInstallReceiver$1;->val$currentTarget:Ljava/io/File;

    invoke-virtual {v0, p1}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "logs-"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_16

    const/4 p1, 0x1

    goto :goto_17

    :cond_16
    const/4 p1, 0x0

    :goto_17
    return p1
.end method
