.class Lcom/android/server/devicepolicy/Owners$ProfileOwnerReadWriter;
.super Lcom/android/server/devicepolicy/Owners$FileReadWriter;
.source "Owners.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/devicepolicy/Owners;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProfileOwnerReadWriter"
.end annotation


# instance fields
.field private final mUserId:I

.field final synthetic this$0:Lcom/android/server/devicepolicy/Owners;


# direct methods
.method constructor <init>(Lcom/android/server/devicepolicy/Owners;I)V
    .registers 3

    .line 907
    iput-object p1, p0, Lcom/android/server/devicepolicy/Owners$ProfileOwnerReadWriter;->this$0:Lcom/android/server/devicepolicy/Owners;

    .line 908
    invoke-virtual {p1, p2}, Lcom/android/server/devicepolicy/Owners;->getProfileOwnerFile(I)Ljava/io/File;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/server/devicepolicy/Owners$FileReadWriter;-><init>(Ljava/io/File;)V

    .line 909
    iput p2, p0, Lcom/android/server/devicepolicy/Owners$ProfileOwnerReadWriter;->mUserId:I

    .line 910
    return-void
.end method


# virtual methods
.method readInner(Lorg/xmlpull/v1/XmlPullParser;ILjava/lang/String;)Z
    .registers 8

    .line 927
    const/4 v0, 0x1

    const/4 v1, 0x2

    if-le p2, v1, :cond_5

    .line 928
    return v0

    .line 930
    :cond_5
    const/4 p2, -0x1

    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, 0x7fdeed8f

    const/4 v3, 0x0

    if-eq v1, v2, :cond_11

    :cond_10
    goto :goto_1b

    :cond_11
    const-string/jumbo v1, "profile-owner"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    move p2, v3

    :goto_1b
    if-eqz p2, :cond_34

    .line 935
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unexpected tag: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "DevicePolicyManagerService"

    invoke-static {p2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 936
    return v3

    .line 932
    :cond_34
    iget-object p2, p0, Lcom/android/server/devicepolicy/Owners$ProfileOwnerReadWriter;->this$0:Lcom/android/server/devicepolicy/Owners;

    invoke-static {p2}, Lcom/android/server/devicepolicy/Owners;->access$600(Lcom/android/server/devicepolicy/Owners;)Landroid/util/ArrayMap;

    move-result-object p2

    iget p3, p0, Lcom/android/server/devicepolicy/Owners$ProfileOwnerReadWriter;->mUserId:I

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-static {p1}, Lcom/android/server/devicepolicy/Owners$OwnerInfo;->readFromXml(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    move-result-object p1

    invoke-virtual {p2, p3, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 933
    nop

    .line 939
    return v0
.end method

.method shouldWrite()Z
    .registers 3

    .line 914
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners$ProfileOwnerReadWriter;->this$0:Lcom/android/server/devicepolicy/Owners;

    invoke-static {v0}, Lcom/android/server/devicepolicy/Owners;->access$600(Lcom/android/server/devicepolicy/Owners;)Landroid/util/ArrayMap;

    move-result-object v0

    iget v1, p0, Lcom/android/server/devicepolicy/Owners$ProfileOwnerReadWriter;->mUserId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    return v0
.end method

.method writeInner(Lorg/xmlpull/v1/XmlSerializer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 919
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners$ProfileOwnerReadWriter;->this$0:Lcom/android/server/devicepolicy/Owners;

    invoke-static {v0}, Lcom/android/server/devicepolicy/Owners;->access$600(Lcom/android/server/devicepolicy/Owners;)Landroid/util/ArrayMap;

    move-result-object v0

    iget v1, p0, Lcom/android/server/devicepolicy/Owners$ProfileOwnerReadWriter;->mUserId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    .line 920
    if-eqz v0, :cond_1a

    .line 921
    const-string/jumbo v1, "profile-owner"

    invoke-virtual {v0, p1, v1}, Lcom/android/server/devicepolicy/Owners$OwnerInfo;->writeToXml(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V

    .line 923
    :cond_1a
    return-void
.end method
