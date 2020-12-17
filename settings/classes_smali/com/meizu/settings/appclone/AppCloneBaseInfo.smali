.class public Lcom/meizu/settings/appclone/AppCloneBaseInfo;
.super Ljava/lang/Object;
.source "AppCloneBaseInfo.java"


# instance fields
.field private mTitle:Ljava/lang/String;

.field private mTitleToPinyin:Ljava/lang/String;

.field private mType:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .registers 3

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput p1, p0, Lcom/meizu/settings/appclone/AppCloneBaseInfo;->mType:I

    .line 18
    iput-object p2, p0, Lcom/meizu/settings/appclone/AppCloneBaseInfo;->mTitle:Ljava/lang/String;

    .line 19
    invoke-static {}, Lcom/meizu/settings/utils/HanziToPinyin;->getInstance()Lcom/meizu/settings/utils/HanziToPinyin;

    move-result-object p1

    iget-object p2, p0, Lcom/meizu/settings/appclone/AppCloneBaseInfo;->mTitle:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/meizu/settings/utils/HanziToPinyin;->transliterate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/appclone/AppCloneBaseInfo;->mTitleToPinyin:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getTitle()Ljava/lang/String;
    .registers 1

    .line 31
    iget-object p0, p0, Lcom/meizu/settings/appclone/AppCloneBaseInfo;->mTitle:Ljava/lang/String;

    return-object p0
.end method

.method public getTitleToPinyin()Ljava/lang/String;
    .registers 1

    .line 40
    iget-object p0, p0, Lcom/meizu/settings/appclone/AppCloneBaseInfo;->mTitleToPinyin:Ljava/lang/String;

    return-object p0
.end method

.method public getType()I
    .registers 1

    .line 23
    iget p0, p0, Lcom/meizu/settings/appclone/AppCloneBaseInfo;->mType:I

    return p0
.end method
