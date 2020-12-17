.class public Lcom/meizu/settings/serviceinfo/Util$FixRecord;
.super Ljava/lang/Object;
.source "Util.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/serviceinfo/Util;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FixRecord"
.end annotation


# instance fields
.field mCStatus:I

.field mFixId:Ljava/lang/String;

.field mFixTime:Ljava/lang/String;

.field mSN:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .registers 5

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p2, p0, Lcom/meizu/settings/serviceinfo/Util$FixRecord;->mFixTime:Ljava/lang/String;

    .line 20
    iput-object p1, p0, Lcom/meizu/settings/serviceinfo/Util$FixRecord;->mFixId:Ljava/lang/String;

    .line 21
    iput p3, p0, Lcom/meizu/settings/serviceinfo/Util$FixRecord;->mCStatus:I

    .line 22
    iput-object p4, p0, Lcom/meizu/settings/serviceinfo/Util$FixRecord;->mSN:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCStatus()I
    .registers 1

    .line 30
    iget p0, p0, Lcom/meizu/settings/serviceinfo/Util$FixRecord;->mCStatus:I

    return p0
.end method

.method public getFixNumber()Ljava/lang/String;
    .registers 1

    .line 38
    iget-object p0, p0, Lcom/meizu/settings/serviceinfo/Util$FixRecord;->mFixId:Ljava/lang/String;

    return-object p0
.end method

.method public getSN()Ljava/lang/String;
    .registers 1

    .line 34
    iget-object p0, p0, Lcom/meizu/settings/serviceinfo/Util$FixRecord;->mSN:Ljava/lang/String;

    return-object p0
.end method

.method public getTime()Ljava/lang/String;
    .registers 1

    .line 26
    iget-object p0, p0, Lcom/meizu/settings/serviceinfo/Util$FixRecord;->mFixTime:Ljava/lang/String;

    return-object p0
.end method

.method public setCStatus(I)V
    .registers 2

    .line 42
    iput p1, p0, Lcom/meizu/settings/serviceinfo/Util$FixRecord;->mCStatus:I

    return-void
.end method
