.class public Lcom/meizu/settings/serviceinfo/Util$InfoItem;
.super Ljava/lang/Object;
.source "Util.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/serviceinfo/Util;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InfoItem"
.end annotation


# instance fields
.field mData:Ljava/lang/String;

.field mTitle:Ljava/lang/String;

.field mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 184
    iput-object p1, p0, Lcom/meizu/settings/serviceinfo/Util$InfoItem;->mTitle:Ljava/lang/String;

    .line 185
    iput-object p2, p0, Lcom/meizu/settings/serviceinfo/Util$InfoItem;->mData:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 189
    iput-object p1, p0, Lcom/meizu/settings/serviceinfo/Util$InfoItem;->mTitle:Ljava/lang/String;

    .line 190
    iput-object p2, p0, Lcom/meizu/settings/serviceinfo/Util$InfoItem;->mData:Ljava/lang/String;

    .line 191
    iput-object p3, p0, Lcom/meizu/settings/serviceinfo/Util$InfoItem;->mUrl:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getData()Ljava/lang/String;
    .registers 1

    .line 199
    iget-object p0, p0, Lcom/meizu/settings/serviceinfo/Util$InfoItem;->mData:Ljava/lang/String;

    return-object p0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 1

    .line 195
    iget-object p0, p0, Lcom/meizu/settings/serviceinfo/Util$InfoItem;->mTitle:Ljava/lang/String;

    return-object p0
.end method

.method public getUrl()Ljava/lang/String;
    .registers 1

    .line 203
    iget-object p0, p0, Lcom/meizu/settings/serviceinfo/Util$InfoItem;->mUrl:Ljava/lang/String;

    return-object p0
.end method
