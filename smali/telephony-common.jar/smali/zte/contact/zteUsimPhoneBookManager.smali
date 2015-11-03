.class public Lzte/contact/zteUsimPhoneBookManager;
.super Landroid/os/Handler;
.source "zteUsimPhoneBookManager.java"

# interfaces
.implements Lcom/android/internal/telephony/uicc/IccConstants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzte/contact/zteUsimPhoneBookManager$PbrFileSfi;,
        Lzte/contact/zteUsimPhoneBookManager$PbrFile;,
        Lzte/contact/zteUsimPhoneBookManager$usimphonebook;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final EVENT_ANR_ALL_LOAD_DONE:I = 0x7

.field private static final EVENT_ANR_EXT_RECORD_LOAD_DONE:I = 0x6

.field private static final EVENT_ANR_LOAD_DONE:I = 0x5

.field private static final EVENT_ANR_USED_ITEMS_LOAD_DONE:I = 0xa

.field private static final EVENT_EMAIL_LOAD_DONE:I = 0x4

.field private static final EVENT_EMAIL_USED_ITEMS_LOAD_DONE:I = 0x9

.field private static final EVENT_GET_EF_FILE_RECORD_SIZE_DONE:I = 0x5

.field private static final EVENT_IAP_LOAD_DONE:I = 0x3

.field private static final EVENT_PBR_LOAD_DONE:I = 0x1

.field private static final EVENT_USIM_ADN_LOAD_DONE:I = 0x2

.field private static final EXT_RECORD_LENGTH_BYTES:I = 0xd

.field private static final EXT_RECORD_TYPE_ADDITIONAL_DATA:I = 0x2

.field private static final EXT_RECORD_TYPE_MASK:I = 0x3

.field private static final LOG_TAG:Ljava/lang/String; = "RIL_zteUsimPhoneBookManager"

.field private static final MAX_EXT_CALLED_PARTY_LENGTH:I = 0xa

.field private static final USIM_EFAAS_TAG:I = 0xc7

.field private static final USIM_EFADN_TAG:I = 0xc0

.field private static final USIM_EFANR_TAG:I = 0xc4

.field private static final USIM_EFCCP1_TAG:I = 0xcb

.field private static final USIM_EFEMAIL_TAG:I = 0xca

.field private static final USIM_EFEXT1_TAG:I = 0xc2

.field private static final USIM_EFGRP_TAG:I = 0xc6

.field private static final USIM_EFGSD_TAG:I = 0xc8

.field private static final USIM_EFIAP_TAG:I = 0xc1

.field private static final USIM_EFPBC_TAG:I = 0xc5

.field private static final USIM_EFSNE_TAG:I = 0xc3

.field private static final USIM_EFUID_TAG:I = 0xc9

.field private static final USIM_TYPE1_TAG:I = 0xa8

.field private static final USIM_TYPE2_TAG:I = 0xa9

.field private static final USIM_TYPE3_TAG:I = 0xaa

.field private static mEmailPresentInIap:Z


# instance fields
.field private Anrdatas:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/uicc/AdnRecord;",
            ">;"
        }
    .end annotation
.end field

.field private Emaildatas:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/uicc/AdnRecord;",
            ">;"
        }
    .end annotation
.end field

.field private anrExtRecId:I

.field private anrRecordExt:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private ext1Efid:I

.field private mAdnCache:Lzte/contact/zteAdnRecordCache;

.field private mAnrFileRecord:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[B>;"
        }
    .end annotation
.end field

.field private mAnrForAdnRec:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mAnrItemsUsed:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private mAnrPresentInIap:Z

.field private mAnrTagNumberInIap:I

.field private mAnrsForAdnRec:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mEmailFileRecord:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[B>;"
        }
    .end annotation
.end field

.field private mEmailItemsUsed:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private mEmailTagNumberInIap:I

.field private mEmailsForAdnRec:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

.field private mIapFileRecord:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[B>;"
        }
    .end annotation
.end field

.field private mIapForAdnRec:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "[B>;"
        }
    .end annotation
.end field

.field private mIsPbrPresent:Ljava/lang/Boolean;

.field private mLock:Ljava/lang/Object;

.field private mPbrFile:Lzte/contact/zteUsimPhoneBookManager$PbrFile;

.field private mPbrFileSfi:Lzte/contact/zteUsimPhoneBookManager$PbrFileSfi;

.field private mPhoneBookRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/uicc/AdnRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mRecordSize:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "[I>;"
        }
    .end annotation
.end field

.field private mRefreshCache:Z

.field private oldNumAdnRec:I

.field private pbrNumbers:I

.field private upb:[Lzte/contact/zteUsimPhoneBookManager$usimphonebook;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x0

    sput-boolean v0, Lzte/contact/zteUsimPhoneBookManager;->mEmailPresentInIap:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/uicc/IccFileHandler;Lzte/contact/zteAdnRecordCache;)V
    .locals 3
    .param p1, "fh"    # Lcom/android/internal/telephony/uicc/IccFileHandler;
    .param p2, "cache"    # Lzte/contact/zteAdnRecordCache;

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 130
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 44
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lzte/contact/zteUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    .line 47
    iput v2, p0, Lzte/contact/zteUsimPhoneBookManager;->mEmailTagNumberInIap:I

    .line 51
    iput-boolean v1, p0, Lzte/contact/zteUsimPhoneBookManager;->mRefreshCache:Z

    .line 54
    iput-boolean v1, p0, Lzte/contact/zteUsimPhoneBookManager;->mAnrPresentInIap:Z

    .line 55
    iput v2, p0, Lzte/contact/zteUsimPhoneBookManager;->mAnrTagNumberInIap:I

    .line 61
    iput v1, p0, Lzte/contact/zteUsimPhoneBookManager;->oldNumAdnRec:I

    .line 63
    const/16 v0, 0xff

    iput v0, p0, Lzte/contact/zteUsimPhoneBookManager;->anrExtRecId:I

    .line 72
    iput v1, p0, Lzte/contact/zteUsimPhoneBookManager;->ext1Efid:I

    .line 73
    iput v1, p0, Lzte/contact/zteUsimPhoneBookManager;->pbrNumbers:I

    .line 131
    iput-object p1, p0, Lzte/contact/zteUsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    .line 132
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lzte/contact/zteUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    .line 134
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lzte/contact/zteUsimPhoneBookManager;->Anrdatas:Ljava/util/ArrayList;

    .line 135
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lzte/contact/zteUsimPhoneBookManager;->Emaildatas:Ljava/util/ArrayList;

    .line 137
    const/4 v0, 0x0

    iput-object v0, p0, Lzte/contact/zteUsimPhoneBookManager;->mPbrFile:Lzte/contact/zteUsimPhoneBookManager$PbrFile;

    .line 140
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lzte/contact/zteUsimPhoneBookManager;->mIsPbrPresent:Ljava/lang/Boolean;

    .line 141
    iput-object p2, p0, Lzte/contact/zteUsimPhoneBookManager;->mAdnCache:Lzte/contact/zteAdnRecordCache;

    .line 143
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lzte/contact/zteUsimPhoneBookManager;->mRecordSize:Ljava/util/Map;

    .line 147
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lzte/contact/zteUsimPhoneBookManager;->mEmailItemsUsed:Ljava/util/HashMap;

    .line 148
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lzte/contact/zteUsimPhoneBookManager;->mAnrItemsUsed:Ljava/util/HashMap;

    .line 150
    return-void
.end method

.method static synthetic access$002(Lzte/contact/zteUsimPhoneBookManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lzte/contact/zteUsimPhoneBookManager;
    .param p1, "x1"    # Z

    .prologue
    .line 37
    iput-boolean p1, p0, Lzte/contact/zteUsimPhoneBookManager;->mAnrPresentInIap:Z

    return p1
.end method

.method static synthetic access$102(Lzte/contact/zteUsimPhoneBookManager;I)I
    .locals 0
    .param p0, "x0"    # Lzte/contact/zteUsimPhoneBookManager;
    .param p1, "x1"    # I

    .prologue
    .line 37
    iput p1, p0, Lzte/contact/zteUsimPhoneBookManager;->mAnrTagNumberInIap:I

    return p1
.end method

.method static synthetic access$202(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 37
    sput-boolean p0, Lzte/contact/zteUsimPhoneBookManager;->mEmailPresentInIap:Z

    return p0
.end method

.method static synthetic access$302(Lzte/contact/zteUsimPhoneBookManager;I)I
    .locals 0
    .param p0, "x0"    # Lzte/contact/zteUsimPhoneBookManager;
    .param p1, "x1"    # I

    .prologue
    .line 37
    iput p1, p0, Lzte/contact/zteUsimPhoneBookManager;->mEmailTagNumberInIap:I

    return p1
.end method

.method static synthetic access$402(Lzte/contact/zteUsimPhoneBookManager;I)I
    .locals 0
    .param p0, "x0"    # Lzte/contact/zteUsimPhoneBookManager;
    .param p1, "x1"    # I

    .prologue
    .line 37
    iput p1, p0, Lzte/contact/zteUsimPhoneBookManager;->ext1Efid:I

    return p1
.end method

.method private createPbrFile(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<[B>;)V"
        }
    .end annotation

    .prologue
    .line 1134
    .local p1, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    if-nez p1, :cond_0

    .line 1135
    const/4 v0, 0x0

    iput-object v0, p0, Lzte/contact/zteUsimPhoneBookManager;->mPbrFile:Lzte/contact/zteUsimPhoneBookManager$PbrFile;

    .line 1136
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lzte/contact/zteUsimPhoneBookManager;->mIsPbrPresent:Ljava/lang/Boolean;

    .line 1140
    :goto_0
    return-void

    .line 1139
    :cond_0
    new-instance v0, Lzte/contact/zteUsimPhoneBookManager$PbrFile;

    invoke-direct {v0, p0, p1}, Lzte/contact/zteUsimPhoneBookManager$PbrFile;-><init>(Lzte/contact/zteUsimPhoneBookManager;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lzte/contact/zteUsimPhoneBookManager;->mPbrFile:Lzte/contact/zteUsimPhoneBookManager$PbrFile;

    goto :goto_0
.end method

.method private createPbrFileSfi(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<[B>;)V"
        }
    .end annotation

    .prologue
    .line 609
    .local p1, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    if-nez p1, :cond_0

    .line 610
    const/4 v0, 0x0

    iput-object v0, p0, Lzte/contact/zteUsimPhoneBookManager;->mPbrFileSfi:Lzte/contact/zteUsimPhoneBookManager$PbrFileSfi;

    .line 615
    :goto_0
    return-void

    .line 614
    :cond_0
    new-instance v0, Lzte/contact/zteUsimPhoneBookManager$PbrFileSfi;

    invoke-direct {v0, p0, p1}, Lzte/contact/zteUsimPhoneBookManager$PbrFileSfi;-><init>(Lzte/contact/zteUsimPhoneBookManager;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lzte/contact/zteUsimPhoneBookManager;->mPbrFileSfi:Lzte/contact/zteUsimPhoneBookManager$PbrFileSfi;

    goto :goto_0
.end method

.method private getEfFileRecordSize()V
    .locals 9

    .prologue
    const/16 v8, 0xca

    const/16 v7, 0xc4

    const/16 v6, 0xc2

    const/16 v5, 0xc1

    .line 159
    iget-object v3, p0, Lzte/contact/zteUsimPhoneBookManager;->mPbrFile:Lzte/contact/zteUsimPhoneBookManager$PbrFile;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lzte/contact/zteUsimPhoneBookManager;->mPbrFile:Lzte/contact/zteUsimPhoneBookManager$PbrFile;

    iget-object v3, v3, Lzte/contact/zteUsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    if-nez v3, :cond_1

    .line 181
    :cond_0
    return-void

    .line 161
    :cond_1
    iget-object v3, p0, Lzte/contact/zteUsimPhoneBookManager;->mPbrFile:Lzte/contact/zteUsimPhoneBookManager$PbrFile;

    iget-object v3, v3, Lzte/contact/zteUsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v2

    .line 163
    .local v2, "numRecs":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 164
    iget-object v3, p0, Lzte/contact/zteUsimPhoneBookManager;->mPbrFile:Lzte/contact/zteUsimPhoneBookManager$PbrFile;

    iget-object v3, v3, Lzte/contact/zteUsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 165
    .local v0, "fileIds":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 167
    const/16 v3, 0xc0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, v3}, Lzte/contact/zteUsimPhoneBookManager;->getEfFileRecordSizeAndWait(I)V

    .line 168
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 169
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, v3}, Lzte/contact/zteUsimPhoneBookManager;->getEfFileRecordSizeAndWait(I)V

    .line 171
    :cond_2
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 172
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, v3}, Lzte/contact/zteUsimPhoneBookManager;->getEfFileRecordSizeAndWait(I)V

    .line 174
    :cond_3
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 175
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, v3}, Lzte/contact/zteUsimPhoneBookManager;->getEfFileRecordSizeAndWait(I)V

    .line 177
    :cond_4
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 178
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, v3}, Lzte/contact/zteUsimPhoneBookManager;->getEfFileRecordSizeAndWait(I)V

    .line 163
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0
.end method

.method private getEfFileRecordSizeAndWait(I)V
    .locals 4
    .param p1, "fileId"    # I

    .prologue
    .line 184
    const-string v1, "RIL_zteUsimPhoneBookManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "in getEfFileRecordSizeAndWait,fileId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",will mFh.getEFLinearRecordSize,EVENT_GET_EF_FILE_RECORD_SIZE_DONE"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    iget-object v1, p0, Lzte/contact/zteUsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/4 v2, 0x5

    const/4 v3, 0x0

    invoke-virtual {p0, v2, p1, v3}, Lzte/contact/zteUsimPhoneBookManager;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFLinearRecordSize(ILandroid/os/Message;)V

    .line 187
    :try_start_0
    iget-object v1, p0, Lzte/contact/zteUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 191
    :goto_0
    return-void

    .line 188
    :catch_0
    move-exception v0

    .line 189
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v1, "RIL_zteUsimPhoneBookManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Interrupted Exception in getEfFileRecordSizeAndWait,fileId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getUsedEmailAndAnrItems(Ljava/util/ArrayList;I)V
    .locals 11
    .param p2, "pbrIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<[B>;I)V"
        }
    .end annotation

    .prologue
    .local p1, "iapList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    const/16 v10, 0xff

    .line 1145
    const/4 v3, 0x0

    .line 1146
    .local v3, "emailIndexList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .line 1147
    .local v1, "anrIndexList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const-string v7, "RIL_zteUsimPhoneBookManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "in getUsedEmailAndAnrItems,isANRTYP2()="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lzte/contact/zteUsimPhoneBookManager;->isANRTYP2()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ",isEMAILTYP2()="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Lzte/contact/zteUsimPhoneBookManager;->isEMAILTYP2()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1148
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v4, v7, :cond_7

    .line 1149
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    .line 1150
    .local v5, "iapRec":[B
    if-nez v5, :cond_1

    .line 1148
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1154
    :cond_1
    invoke-static {}, Lzte/contact/zteUsimPhoneBookManager;->isEMAILTYP2()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1155
    if-nez v3, :cond_2

    .line 1156
    new-instance v3, Ljava/util/ArrayList;

    .end local v3    # "emailIndexList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1159
    .restart local v3    # "emailIndexList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_2
    iget v7, p0, Lzte/contact/zteUsimPhoneBookManager;->mEmailTagNumberInIap:I

    aget-byte v7, v5, v7

    and-int/lit16 v2, v7, 0xff

    .line 1160
    .local v2, "emailIndex":I
    if-lez v2, :cond_3

    if-eq v2, v10, :cond_3

    .line 1161
    const-string v7, "RIL_zteUsimPhoneBookManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "in getUsedEmailAndAnrItems,emailIndex="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1162
    const-string v7, "RIL_zteUsimPhoneBookManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "in getUsedEmailAndAnrItems,hasContained="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1163
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 1164
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1167
    :cond_3
    const-string v7, "RIL_zteUsimPhoneBookManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "in getUsedEmailAndAnrItems,emailIndexList.size()="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1170
    .end local v2    # "emailIndex":I
    :cond_4
    invoke-virtual {p0}, Lzte/contact/zteUsimPhoneBookManager;->isANRTYP2()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1171
    if-nez v1, :cond_5

    .line 1172
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "anrIndexList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1175
    .restart local v1    # "anrIndexList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_5
    iget v7, p0, Lzte/contact/zteUsimPhoneBookManager;->mAnrTagNumberInIap:I

    aget-byte v7, v5, v7

    and-int/lit16 v0, v7, 0xff

    .line 1176
    .local v0, "anrIndex":I
    if-lez v0, :cond_6

    if-eq v0, v10, :cond_6

    .line 1177
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 1178
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1181
    :cond_6
    const-string v7, "RIL_zteUsimPhoneBookManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "in getUsedEmailAndAnrItems,anrIndexList.size()="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1185
    .end local v0    # "anrIndex":I
    .end local v5    # "iapRec":[B
    :cond_7
    invoke-static {}, Lzte/contact/zteUsimPhoneBookManager;->isEMAILTYP2()Z

    move-result v7

    if-eqz v7, :cond_a

    .line 1186
    const/4 v6, 0x0

    .line 1187
    .local v6, "j":I
    :goto_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_8

    .line 1188
    const-string v7, "RIL_zteUsimPhoneBookManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "in getUsedEmailAndAnrItems,before sort,emailIndexList["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1187
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 1190
    :cond_8
    invoke-static {v3}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 1191
    const/4 v6, 0x0

    :goto_3
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_9

    .line 1192
    const-string v7, "RIL_zteUsimPhoneBookManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "in getUsedEmailAndAnrItems,after sort,emailIndexList["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1191
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 1194
    :cond_9
    iget-object v7, p0, Lzte/contact/zteUsimPhoneBookManager;->mEmailItemsUsed:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1197
    .end local v6    # "j":I
    :cond_a
    invoke-virtual {p0}, Lzte/contact/zteUsimPhoneBookManager;->isANRTYP2()Z

    move-result v7

    if-eqz v7, :cond_b

    .line 1198
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 1199
    iget-object v7, p0, Lzte/contact/zteUsimPhoneBookManager;->mAnrItemsUsed:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1201
    :cond_b
    return-void
.end method

.method public static isEMAILTYP2()Z
    .locals 1

    .prologue
    .line 215
    sget-boolean v0, Lzte/contact/zteUsimPhoneBookManager;->mEmailPresentInIap:Z

    return v0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 1625
    const-string v0, "RIL_zteUsimPhoneBookManager"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1626
    return-void
.end method

.method private readAdnFileAndWait(I)V
    .locals 8
    .param p1, "recNum"    # I

    .prologue
    const/16 v7, 0xc2

    const/16 v4, 0xc0

    const/4 v6, 0x2

    const/4 v5, 0x0

    .line 1111
    iget-object v2, p0, Lzte/contact/zteUsimPhoneBookManager;->mPbrFile:Lzte/contact/zteUsimPhoneBookManager$PbrFile;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lzte/contact/zteUsimPhoneBookManager;->mPbrFile:Lzte/contact/zteUsimPhoneBookManager$PbrFile;

    iget-object v2, v2, Lzte/contact/zteUsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    if-nez v2, :cond_1

    .line 1131
    :cond_0
    :goto_0
    return-void

    .line 1112
    :cond_1
    iget-object v2, p0, Lzte/contact/zteUsimPhoneBookManager;->mPbrFile:Lzte/contact/zteUsimPhoneBookManager$PbrFile;

    iget-object v2, v2, Lzte/contact/zteUsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 1113
    .local v1, "fileIds":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1115
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1118
    new-instance v3, Lzte/contact/ZteAdnRecordLoader;

    iget-object v2, p0, Lzte/contact/zteUsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-direct {v3, v2}, Lzte/contact/ZteAdnRecordLoader;-><init>(Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v6, p1, v5}, Lzte/contact/zteUsimPhoneBookManager;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v3, v4, v2, v5}, Lzte/contact/ZteAdnRecordLoader;->loadAllFromEF(IILandroid/os/Message;)V

    .line 1127
    :goto_1
    :try_start_0
    iget-object v2, p0, Lzte/contact/zteUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1128
    :catch_0
    move-exception v0

    .line 1129
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v2, "RIL_zteUsimPhoneBookManager"

    const-string v3, "Interrupted Exception in readAdnFileAndWait"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1122
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_2
    new-instance v3, Lzte/contact/ZteAdnRecordLoader;

    iget-object v2, p0, Lzte/contact/zteUsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-direct {v3, v2}, Lzte/contact/ZteAdnRecordLoader;-><init>(Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v6, p1, v5}, Lzte/contact/zteUsimPhoneBookManager;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v2, v5, v4}, Lzte/contact/ZteAdnRecordLoader;->loadAllFromEF(IILandroid/os/Message;)V

    goto :goto_1
.end method

.method private readAnrFileAndWait(I)V
    .locals 14
    .param p1, "recNum"    # I

    .prologue
    const/16 v13, 0xc4

    const/16 v7, 0xc2

    const/4 v12, 0x0

    .line 425
    iget-object v0, p0, Lzte/contact/zteUsimPhoneBookManager;->mPbrFile:Lzte/contact/zteUsimPhoneBookManager$PbrFile;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lzte/contact/zteUsimPhoneBookManager;->mPbrFile:Lzte/contact/zteUsimPhoneBookManager$PbrFile;

    iget-object v0, v0, Lzte/contact/zteUsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    if-nez v0, :cond_1

    .line 471
    :cond_0
    :goto_0
    return-void

    .line 426
    :cond_1
    iget-object v0, p0, Lzte/contact/zteUsimPhoneBookManager;->mPbrFile:Lzte/contact/zteUsimPhoneBookManager$PbrFile;

    iget-object v0, v0, Lzte/contact/zteUsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map;

    .line 427
    .local v10, "fileIds":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-eqz v10, :cond_0

    invoke-interface {v10}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 429
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v10, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 430
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v10, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 431
    .local v4, "efid":I
    const/4 v5, 0x0

    .line 432
    .local v5, "extEfid":I
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v10, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 433
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v10, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 436
    :cond_2
    invoke-virtual {p0}, Lzte/contact/zteUsimPhoneBookManager;->isANRTYP2()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 437
    const-string v0, "RIL_zteUsimPhoneBookManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "in readAnrFileAndWait, is type2 anr,recNum="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    const/4 v11, 0x0

    .line 439
    .local v11, "recordSize":[I
    iget-object v0, p0, Lzte/contact/zteUsimPhoneBookManager;->mRecordSize:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    .end local v11    # "recordSize":[I
    check-cast v11, [I

    .line 440
    .restart local v11    # "recordSize":[I
    if-nez v11, :cond_3

    .line 441
    const-string v0, "RIL_zteUsimPhoneBookManager"

    const-string v6, " in readAnrFileAndWait, error, recordSize == null"

    invoke-static {v0, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 444
    :cond_3
    aget v1, v11, v12

    .line 445
    .local v1, "efItemSize":I
    const/4 v0, 0x2

    aget v3, v11, v0

    .line 446
    .local v3, "efItemCnt":I
    const/4 v2, 0x0

    .line 447
    .local v2, "extEfItemSize":I
    iget-object v0, p0, Lzte/contact/zteUsimPhoneBookManager;->mRecordSize:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [I

    .line 448
    .local v9, "extRecordSize":[I
    if-eqz v9, :cond_4

    .line 449
    aget v2, v9, v12

    .line 452
    :cond_4
    const-string v0, "RIL_zteUsimPhoneBookManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "in readAnrFileAndWait, mAnrItemsUsed.get(recNum)="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lzte/contact/zteUsimPhoneBookManager;->mAnrItemsUsed:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    new-instance v0, Lzte/contact/ZteAdnRecordLoader;

    iget-object v6, p0, Lzte/contact/zteUsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-direct {v0, v6}, Lzte/contact/ZteAdnRecordLoader;-><init>(Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    iget-object v6, p0, Lzte/contact/zteUsimPhoneBookManager;->mAnrItemsUsed:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    const/16 v7, 0xa

    invoke-virtual {p0, v7, p1, v4}, Lzte/contact/zteUsimPhoneBookManager;->obtainMessage(III)Landroid/os/Message;

    move-result-object v7

    invoke-virtual/range {v0 .. v7}, Lzte/contact/ZteAdnRecordLoader;->loadAnrItemsFromEF(IIIIILjava/util/ArrayList;Landroid/os/Message;)V

    .line 463
    .end local v1    # "efItemSize":I
    .end local v2    # "extEfItemSize":I
    .end local v3    # "efItemCnt":I
    .end local v9    # "extRecordSize":[I
    .end local v11    # "recordSize":[I
    :goto_1
    :try_start_0
    iget-object v0, p0, Lzte/contact/zteUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 464
    :catch_0
    move-exception v8

    .line 465
    .local v8, "e":Ljava/lang/InterruptedException;
    const-string v0, "RIL_zteUsimPhoneBookManager"

    const-string v6, "Interrupted Exception in readAnrFileAndWait"

    invoke-static {v0, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 456
    .end local v8    # "e":Ljava/lang/InterruptedException;
    :cond_5
    const-string v0, "RIL_zteUsimPhoneBookManager"

    const-string v6, "in readAnrFileAndWait, is type1 anr"

    invoke-static {v0, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    const-string v0, "RIL_zteUsimPhoneBookManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "in readAnrFileAndWait,will AdnRecordLoader(mFh).loadAllAnrFromEF,EVENT_ANR_ALL_LOAD_DONE,recNum="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    new-instance v0, Lzte/contact/ZteAdnRecordLoader;

    iget-object v6, p0, Lzte/contact/zteUsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-direct {v0, v6}, Lzte/contact/ZteAdnRecordLoader;-><init>(Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    const/4 v6, 0x7

    invoke-virtual {p0, v6, v4, p1}, Lzte/contact/zteUsimPhoneBookManager;->obtainMessage(III)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v0, v4, v5, v6}, Lzte/contact/ZteAdnRecordLoader;->loadAllAnrFromEF(IILandroid/os/Message;)V

    goto :goto_1
.end method

.method private readAnrRecord(I)Ljava/lang/String;
    .locals 7
    .param p1, "recNum"    # I

    .prologue
    .line 1000
    const/4 v3, 0x0

    .line 1002
    .local v3, "anrRec":[B
    :try_start_0
    iget-object v5, p0, Lzte/contact/zteUsimPhoneBookManager;->mAnrFileRecord:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, [B

    move-object v3, v0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1007
    const/4 v5, 0x1

    aget-byte v5, v3, v5

    and-int/lit16 v2, v5, 0xff

    .line 1009
    .local v2, "anrLength":I
    const/4 v5, 0x2

    add-int/lit8 v6, v2, 0x1

    invoke-static {v3, v5, v6}, Landroid/telephony/PhoneNumberUtils;->calledPartyBCDToString([BII)Ljava/lang/String;

    move-result-object v1

    .line 1010
    .end local v2    # "anrLength":I
    :goto_0
    return-object v1

    .line 1003
    :catch_0
    move-exception v4

    .line 1004
    .local v4, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "readAnrRecord mAnrFileRecord.get exception anrRec = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lzte/contact/zteUsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1005
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private readEmailFileAndWait(I)V
    .locals 9
    .param p1, "recNum"    # I

    .prologue
    const/16 v6, 0xca

    const/4 v8, 0x0

    .line 360
    iget-object v4, p0, Lzte/contact/zteUsimPhoneBookManager;->mPbrFile:Lzte/contact/zteUsimPhoneBookManager$PbrFile;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lzte/contact/zteUsimPhoneBookManager;->mPbrFile:Lzte/contact/zteUsimPhoneBookManager$PbrFile;

    iget-object v4, v4, Lzte/contact/zteUsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    if-nez v4, :cond_1

    .line 402
    :cond_0
    :goto_0
    return-void

    .line 361
    :cond_1
    iget-object v4, p0, Lzte/contact/zteUsimPhoneBookManager;->mPbrFile:Lzte/contact/zteUsimPhoneBookManager$PbrFile;

    iget-object v4, v4, Lzte/contact/zteUsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 362
    .local v2, "fileIds":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 364
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 365
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 366
    .local v1, "efid":I
    invoke-static {}, Lzte/contact/zteUsimPhoneBookManager;->isEMAILTYP2()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 367
    const-string v4, "RIL_zteUsimPhoneBookManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "in readEmailFileAndWait, is type2 email,recNum="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    const/4 v3, 0x0

    .line 369
    .local v3, "recordSize":[I
    iget-object v4, p0, Lzte/contact/zteUsimPhoneBookManager;->mRecordSize:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "recordSize":[I
    check-cast v3, [I

    .line 370
    .restart local v3    # "recordSize":[I
    if-nez v3, :cond_2

    .line 371
    const-string v4, "RIL_zteUsimPhoneBookManager"

    const-string v5, " in readEmailFileAndWait, error, recordSize == null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 375
    :cond_2
    const-string v4, "RIL_zteUsimPhoneBookManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "in readEmailFileAndWait, recordSize[0] = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget v6, v3, v8

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    const-string v4, "RIL_zteUsimPhoneBookManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " in readEmailFileAndWait, recordSize[1] = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x1

    aget v6, v3, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    const-string v4, "RIL_zteUsimPhoneBookManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " in readEmailFileAndWait, recordSize[2] = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x2

    aget v6, v3, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    const-string v4, "RIL_zteUsimPhoneBookManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "in readEmailFileAndWait, mEmailItemsUsed.get(recNum) = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lzte/contact/zteUsimPhoneBookManager;->mEmailItemsUsed:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    iget-object v5, p0, Lzte/contact/zteUsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    aget v6, v3, v8

    iget-object v4, p0, Lzte/contact/zteUsimPhoneBookManager;->mEmailItemsUsed:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    const/16 v7, 0x9

    invoke-virtual {p0, v7, p1, v1}, Lzte/contact/zteUsimPhoneBookManager;->obtainMessage(III)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v5, v6, v1, v4, v7}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixedItems(IILjava/util/ArrayList;Landroid/os/Message;)V

    .line 390
    .end local v3    # "recordSize":[I
    :goto_1
    :try_start_0
    iget-object v4, p0, Lzte/contact/zteUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 395
    :goto_2
    iget-object v4, p0, Lzte/contact/zteUsimPhoneBookManager;->mEmailFileRecord:Ljava/util/ArrayList;

    if-nez v4, :cond_0

    .line 396
    const-string v4, "RIL_zteUsimPhoneBookManager"

    const-string v5, "Error: Email file is empty"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 385
    :cond_3
    const-string v4, "RIL_zteUsimPhoneBookManager"

    const-string v5, " in readEmailFileAndWait, is type1 email"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    iget-object v5, p0, Lzte/contact/zteUsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v6, 0x4

    invoke-virtual {p0, v6, p1, v8}, Lzte/contact/zteUsimPhoneBookManager;->obtainMessage(III)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixedAll(ILandroid/os/Message;)V

    goto :goto_1

    .line 391
    :catch_0
    move-exception v0

    .line 392
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v4, "RIL_zteUsimPhoneBookManager"

    const-string v5, "Interrupted Exception in readEmailFileAndWait"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private readEmailRecord(Ljava/util/ArrayList;I)Ljava/lang/String;
    .locals 7
    .param p2, "recNum"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<[B>;I)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p1, "emailFileRecord":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    const/4 v6, 0x0

    .line 1088
    const/4 v3, 0x0

    .line 1090
    .local v3, "emailRec":[B
    :try_start_0
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, [B

    move-object v3, v0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1096
    array-length v4, v3

    add-int/lit8 v4, v4, -0x2

    invoke-static {v3, v6, v4}, Lcom/android/internal/telephony/uicc/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;

    move-result-object v2

    .line 1101
    .local v2, "email":Ljava/lang/String;
    const/4 v4, -0x1

    array-length v5, v3

    add-int/lit8 v5, v5, -0x1

    aget-byte v5, v3, v5

    if-ne v4, v5, :cond_0

    .line 1102
    array-length v4, v3

    invoke-static {v3, v6, v4}, Lcom/android/internal/telephony/uicc/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;

    move-result-object v2

    .line 1106
    .end local v2    # "email":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v2

    .line 1091
    :catch_0
    move-exception v1

    .line 1092
    .local v1, "e":Ljava/lang/IndexOutOfBoundsException;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private readIapFileAndWait(I)V
    .locals 6
    .param p1, "recNum"    # I

    .prologue
    .line 408
    iget-object v3, p0, Lzte/contact/zteUsimPhoneBookManager;->mPbrFile:Lzte/contact/zteUsimPhoneBookManager$PbrFile;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lzte/contact/zteUsimPhoneBookManager;->mPbrFile:Lzte/contact/zteUsimPhoneBookManager$PbrFile;

    iget-object v3, v3, Lzte/contact/zteUsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    if-nez v3, :cond_1

    .line 419
    :cond_0
    :goto_0
    return-void

    .line 409
    :cond_1
    iget-object v3, p0, Lzte/contact/zteUsimPhoneBookManager;->mPbrFile:Lzte/contact/zteUsimPhoneBookManager$PbrFile;

    iget-object v3, v3, Lzte/contact/zteUsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 410
    .local v2, "fileIds":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 411
    const/16 v3, 0xc1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 413
    .local v1, "efid":I
    iget-object v3, p0, Lzte/contact/zteUsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-virtual {p0, v4, p1, v5}, Lzte/contact/zteUsimPhoneBookManager;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixedAll(ILandroid/os/Message;)V

    .line 415
    :try_start_0
    iget-object v3, p0, Lzte/contact/zteUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 416
    :catch_0
    move-exception v0

    .line 417
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v3, "RIL_zteUsimPhoneBookManager"

    const-string v4, "Interrupted Exception in readIapFileAndWait"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private readIapRecord(I)[B
    .locals 4
    .param p1, "recNum"    # I

    .prologue
    .line 1078
    const/4 v2, 0x0

    .line 1080
    .local v2, "iapRec":[B
    :try_start_0
    iget-object v3, p0, Lzte/contact/zteUsimPhoneBookManager;->mIapFileRecord:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, [B

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v2

    .line 1084
    :goto_0
    return-object v3

    .line 1081
    :catch_0
    move-exception v1

    .line 1082
    .local v1, "e":Ljava/lang/IndexOutOfBoundsException;
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private readPbrFileAndWait()V
    .locals 4

    .prologue
    .line 348
    iget-object v1, p0, Lzte/contact/zteUsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v2, 0x4f30

    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lzte/contact/zteUsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixedAll(ILandroid/os/Message;)V

    .line 350
    :try_start_0
    iget-object v1, p0, Lzte/contact/zteUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 354
    :goto_0
    return-void

    .line 351
    :catch_0
    move-exception v0

    .line 352
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v1, "RIL_zteUsimPhoneBookManager"

    const-string v2, "Interrupted Exception in readPbrFileAndWait"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private refreshCache()V
    .locals 3

    .prologue
    .line 334
    iget-object v2, p0, Lzte/contact/zteUsimPhoneBookManager;->mPbrFile:Lzte/contact/zteUsimPhoneBookManager$PbrFile;

    if-nez v2, :cond_1

    .line 341
    :cond_0
    return-void

    .line 335
    :cond_1
    iget-object v2, p0, Lzte/contact/zteUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 337
    iget-object v2, p0, Lzte/contact/zteUsimPhoneBookManager;->mPbrFile:Lzte/contact/zteUsimPhoneBookManager$PbrFile;

    iget-object v2, v2, Lzte/contact/zteUsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v1

    .line 338
    .local v1, "numRecs":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 339
    invoke-direct {p0, v0}, Lzte/contact/zteUsimPhoneBookManager;->readAdnFileAndWait(I)V

    .line 338
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private updatePhoneAdnRecord(I)V
    .locals 13
    .param p1, "recordNum"    # I

    .prologue
    const/4 v12, 0x0

    .line 803
    iget-object v10, p0, Lzte/contact/zteUsimPhoneBookManager;->mEmailFileRecord:Ljava/util/ArrayList;

    if-nez v10, :cond_1

    .line 888
    :cond_0
    :goto_0
    return-void

    .line 804
    :cond_1
    iget-object v10, p0, Lzte/contact/zteUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 806
    .local v5, "numAdnRecs":I
    if-nez p1, :cond_2

    .line 807
    iput v5, p0, Lzte/contact/zteUsimPhoneBookManager;->oldNumAdnRec:I

    .line 809
    :cond_2
    const/4 v7, 0x0

    .line 810
    .local v7, "recIndex":I
    if-lez p1, :cond_4

    .line 811
    iget v7, p0, Lzte/contact/zteUsimPhoneBookManager;->oldNumAdnRec:I

    .line 815
    :goto_1
    iget-object v10, p0, Lzte/contact/zteUsimPhoneBookManager;->mIapFileRecord:Ljava/util/ArrayList;

    if-eqz v10, :cond_5

    invoke-static {}, Lzte/contact/zteUsimPhoneBookManager;->isEMAILTYP2()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 820
    iget v10, p0, Lzte/contact/zteUsimPhoneBookManager;->oldNumAdnRec:I

    invoke-virtual {p0, p1, v10}, Lzte/contact/zteUsimPhoneBookManager;->parseType1IapFile(II)V

    .line 822
    move v3, v7

    .local v3, "i":I
    :goto_2
    iget-object v10, p0, Lzte/contact/zteUsimPhoneBookManager;->mIapFileRecord:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v3, v10, :cond_5

    .line 823
    const/4 v9, 0x0

    .line 825
    .local v9, "record":[B
    :try_start_0
    iget-object v10, p0, Lzte/contact/zteUsimPhoneBookManager;->mIapForAdnRec:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .end local v9    # "record":[B
    check-cast v9, [B
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 831
    .restart local v9    # "record":[B
    if-nez v9, :cond_6

    .line 822
    :cond_3
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 813
    .end local v3    # "i":I
    .end local v9    # "record":[B
    :cond_4
    const/4 v7, 0x0

    goto :goto_1

    .line 826
    .restart local v3    # "i":I
    :catch_0
    move-exception v0

    .line 827
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string v10, "RIL_zteUsimPhoneBookManager"

    const-string v11, "Error: Improper ICC card: No IAP record for ADN, continuing"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 856
    .end local v0    # "e":Ljava/lang/IndexOutOfBoundsException;
    .end local v3    # "i":I
    :cond_5
    iget-object v10, p0, Lzte/contact/zteUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 863
    .local v4, "len":I
    iget v10, p0, Lzte/contact/zteUsimPhoneBookManager;->oldNumAdnRec:I

    invoke-virtual {p0, p1, v10}, Lzte/contact/zteUsimPhoneBookManager;->parseType1EmailFile(II)V

    .line 871
    move v3, v7

    .restart local v3    # "i":I
    :goto_4
    if-ge v3, v5, :cond_0

    .line 873
    const/4 v1, 0x0

    .line 875
    .local v1, "emailList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_1
    iget-object v10, p0, Lzte/contact/zteUsimPhoneBookManager;->mEmailsForAdnRec:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "emailList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    check-cast v1, Ljava/util/ArrayList;
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    .line 879
    .restart local v1    # "emailList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v1, :cond_8

    .line 871
    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 834
    .end local v1    # "emailList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v4    # "len":I
    .restart local v9    # "record":[B
    :cond_6
    iget v10, p0, Lzte/contact/zteUsimPhoneBookManager;->mEmailTagNumberInIap:I

    aget-byte v10, v9, v10

    and-int/lit16 v8, v10, 0xff

    .line 836
    .local v8, "recNum":I
    const/4 v10, -0x1

    if-eq v8, v10, :cond_3

    .line 837
    const/4 v10, 0x1

    new-array v2, v10, [Ljava/lang/String;

    .line 839
    .local v2, "emails":[Ljava/lang/String;
    iget-object v10, p0, Lzte/contact/zteUsimPhoneBookManager;->mEmailFileRecord:Ljava/util/ArrayList;

    add-int/lit8 v11, v8, -0x1

    invoke-direct {p0, v10, v11}, Lzte/contact/zteUsimPhoneBookManager;->readEmailRecord(Ljava/util/ArrayList;I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v2, v12

    .line 840
    iget-object v10, p0, Lzte/contact/zteUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/uicc/AdnRecord;

    .line 841
    .local v6, "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    if-eqz v6, :cond_7

    .line 842
    invoke-virtual {v6, v2}, Lcom/android/internal/telephony/uicc/AdnRecord;->setEmails([Ljava/lang/String;)V

    .line 847
    :goto_6
    iget-object v10, p0, Lzte/contact/zteUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v10, v3, v6}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 845
    :cond_7
    new-instance v6, Lcom/android/internal/telephony/uicc/AdnRecord;

    .end local v6    # "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    const-string v10, ""

    const-string v11, ""

    invoke-direct {v6, v10, v11, v2}, Lcom/android/internal/telephony/uicc/AdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .restart local v6    # "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    goto :goto_6

    .line 876
    .end local v2    # "emails":[Ljava/lang/String;
    .end local v6    # "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    .end local v8    # "recNum":I
    .end local v9    # "record":[B
    .restart local v4    # "len":I
    :catch_1
    move-exception v0

    .line 877
    .restart local v0    # "e":Ljava/lang/IndexOutOfBoundsException;
    goto/16 :goto_0

    .line 881
    .end local v0    # "e":Ljava/lang/IndexOutOfBoundsException;
    .restart local v1    # "emailList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_8
    iget-object v10, p0, Lzte/contact/zteUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/uicc/AdnRecord;

    .line 883
    .restart local v6    # "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v10

    new-array v2, v10, [Ljava/lang/String;

    .line 884
    .restart local v2    # "emails":[Ljava/lang/String;
    invoke-virtual {v1}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v11

    invoke-static {v10, v12, v2, v12, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 885
    invoke-virtual {v6, v2}, Lcom/android/internal/telephony/uicc/AdnRecord;->setEmails([Ljava/lang/String;)V

    .line 886
    iget-object v10, p0, Lzte/contact/zteUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v10, v3, v6}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_5
.end method

.method private updatePhoneAnrAdnRecord(I)V
    .locals 21
    .param p1, "recNum"    # I

    .prologue
    .line 892
    move-object/from16 v0, p0

    iget-object v0, v0, Lzte/contact/zteUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v14

    .line 894
    .local v14, "numAdnRecs":I
    const-string v6, ""

    .line 896
    .local v6, "anr":Ljava/lang/String;
    if-nez p1, :cond_0

    .line 897
    move-object/from16 v0, p0

    iput v14, v0, Lzte/contact/zteUsimPhoneBookManager;->oldNumAdnRec:I

    .line 899
    :cond_0
    const/16 v16, 0x0

    .line 900
    .local v16, "recIndex":I
    if-lez p1, :cond_2

    .line 901
    move-object/from16 v0, p0

    iget v0, v0, Lzte/contact/zteUsimPhoneBookManager;->oldNumAdnRec:I

    move/from16 v16, v0

    .line 906
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lzte/contact/zteUsimPhoneBookManager;->mIapFileRecord:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    if-eqz v18, :cond_3

    invoke-virtual/range {p0 .. p0}, Lzte/contact/zteUsimPhoneBookManager;->isANRTYP2()Z

    move-result v18

    if-eqz v18, :cond_3

    .line 907
    move-object/from16 v0, p0

    iget v0, v0, Lzte/contact/zteUsimPhoneBookManager;->oldNumAdnRec:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lzte/contact/zteUsimPhoneBookManager;->parseType1IapFile(II)V

    .line 908
    move/from16 v11, v16

    .local v11, "i":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lzte/contact/zteUsimPhoneBookManager;->mIapFileRecord:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v18

    move/from16 v0, v18

    if-ge v11, v0, :cond_3

    .line 909
    const/16 v17, 0x0

    .line 911
    .local v17, "record":[B
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lzte/contact/zteUsimPhoneBookManager;->mIapForAdnRec:Ljava/util/Map;

    move-object/from16 v18, v0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-interface/range {v18 .. v19}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    .end local v17    # "record":[B
    check-cast v17, [B
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 916
    .restart local v17    # "record":[B
    move-object/from16 v0, p0

    iget v0, v0, Lzte/contact/zteUsimPhoneBookManager;->mAnrTagNumberInIap:I

    move/from16 v18, v0

    aget-byte v18, v17, v18

    move/from16 v0, v18

    and-int/lit16 v8, v0, 0xff

    .line 917
    .local v8, "anrrecNum":I
    const/16 v18, 0xff

    move/from16 v0, v18

    if-ne v8, v0, :cond_5

    .line 908
    :cond_1
    :goto_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 903
    .end local v8    # "anrrecNum":I
    .end local v11    # "i":I
    .end local v17    # "record":[B
    :cond_2
    const/16 v16, 0x0

    goto :goto_0

    .line 912
    .restart local v11    # "i":I
    :catch_0
    move-exception v9

    .line 913
    .local v9, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string v18, "RIL_zteUsimPhoneBookManager"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Error: Improper ICC card: No IAP record for ADN, continuing i= "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 931
    .end local v9    # "e":Ljava/lang/IndexOutOfBoundsException;
    .end local v11    # "i":I
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lzte/contact/zteUsimPhoneBookManager;->Anrdatas:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    if-eqz v18, :cond_9

    .line 932
    const/4 v12, 0x0

    .line 933
    .local v12, "index":I
    if-nez p1, :cond_7

    .line 934
    const/4 v12, 0x0

    .line 935
    move-object/from16 v0, p0

    iput v14, v0, Lzte/contact/zteUsimPhoneBookManager;->oldNumAdnRec:I

    .line 939
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lzte/contact/zteUsimPhoneBookManager;->Anrdatas:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    :cond_4
    :goto_4
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_9

    .line 940
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/uicc/AdnRecord;

    .line 941
    .local v4, "REC":Lcom/android/internal/telephony/uicc/AdnRecord;
    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAnr()Ljava/lang/String;

    move-result-object v6

    .line 942
    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAnrExtNumber()I

    move-result v10

    .line 943
    .local v10, "extAnrIndex":I
    invoke-virtual/range {p0 .. p0}, Lzte/contact/zteUsimPhoneBookManager;->isANRTYP2()Z

    move-result v18

    if-eqz v18, :cond_8

    .line 944
    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAnrIndex()I

    move-result v3

    .line 945
    .local v3, "AnrIndex":I
    if-ge v3, v14, :cond_4

    .line 946
    if-eqz v3, :cond_4

    const/16 v18, 0xff

    move/from16 v0, v18

    if-eq v3, v0, :cond_4

    .line 947
    add-int/lit8 v3, v3, -0x1

    .line 949
    move-object/from16 v0, p0

    iget-object v0, v0, Lzte/contact/zteUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/internal/telephony/uicc/AdnRecord;

    .line 950
    .local v15, "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    invoke-virtual {v15, v6}, Lcom/android/internal/telephony/uicc/AdnRecord;->setAnr(Ljava/lang/String;)V

    .line 951
    move-object/from16 v0, p0

    iget-object v0, v0, Lzte/contact/zteUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v15}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 952
    if-eqz v10, :cond_4

    const/16 v18, 0xff

    move/from16 v0, v18

    if-eq v10, v0, :cond_4

    .line 953
    move-object/from16 v0, p0

    iget-object v0, v0, Lzte/contact/zteUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/uicc/AdnRecord;

    .line 954
    .local v5, "Rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    invoke-virtual {v5, v10}, Lcom/android/internal/telephony/uicc/AdnRecord;->setAnrExtNumber(I)V

    .line 955
    move-object/from16 v0, p0

    iget-object v0, v0, Lzte/contact/zteUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v15}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 918
    .end local v3    # "AnrIndex":I
    .end local v4    # "REC":Lcom/android/internal/telephony/uicc/AdnRecord;
    .end local v5    # "Rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    .end local v10    # "extAnrIndex":I
    .end local v12    # "index":I
    .end local v13    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    .end local v15    # "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    .restart local v8    # "anrrecNum":I
    .restart local v11    # "i":I
    .restart local v17    # "record":[B
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lzte/contact/zteUsimPhoneBookManager;->Anrdatas:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v18

    if-lez v18, :cond_1

    .line 919
    move-object/from16 v0, p0

    iget-object v0, v0, Lzte/contact/zteUsimPhoneBookManager;->Anrdatas:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    add-int/lit8 v19, v8, -0x1

    invoke-virtual/range {v18 .. v19}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/internal/telephony/uicc/AdnRecord;

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAnr()Ljava/lang/String;

    move-result-object v6

    .line 920
    move-object/from16 v0, p0

    iget-object v0, v0, Lzte/contact/zteUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/telephony/uicc/AdnRecord;

    .line 921
    .local v7, "anrrec":Lcom/android/internal/telephony/uicc/AdnRecord;
    if-eqz v7, :cond_6

    .line 922
    invoke-virtual {v7, v6}, Lcom/android/internal/telephony/uicc/AdnRecord;->setAnr(Ljava/lang/String;)V

    .line 926
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lzte/contact/zteUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v11, v7}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 924
    :cond_6
    new-instance v7, Lcom/android/internal/telephony/uicc/AdnRecord;

    .end local v7    # "anrrec":Lcom/android/internal/telephony/uicc/AdnRecord;
    const-string v18, ""

    const-string v19, ""

    const-string v20, ""

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v7, v0, v1, v6, v2}, Lcom/android/internal/telephony/uicc/AdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .restart local v7    # "anrrec":Lcom/android/internal/telephony/uicc/AdnRecord;
    goto :goto_5

    .line 937
    .end local v7    # "anrrec":Lcom/android/internal/telephony/uicc/AdnRecord;
    .end local v8    # "anrrecNum":I
    .end local v11    # "i":I
    .end local v17    # "record":[B
    .restart local v12    # "index":I
    :cond_7
    move-object/from16 v0, p0

    iget v12, v0, Lzte/contact/zteUsimPhoneBookManager;->oldNumAdnRec:I

    goto/16 :goto_3

    .line 959
    .restart local v4    # "REC":Lcom/android/internal/telephony/uicc/AdnRecord;
    .restart local v10    # "extAnrIndex":I
    .restart local v13    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    :cond_8
    if-lt v12, v14, :cond_a

    .line 975
    .end local v4    # "REC":Lcom/android/internal/telephony/uicc/AdnRecord;
    .end local v10    # "extAnrIndex":I
    .end local v12    # "index":I
    .end local v13    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    :cond_9
    return-void

    .line 960
    .restart local v4    # "REC":Lcom/android/internal/telephony/uicc/AdnRecord;
    .restart local v10    # "extAnrIndex":I
    .restart local v12    # "index":I
    .restart local v13    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lzte/contact/zteUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/internal/telephony/uicc/AdnRecord;

    .line 961
    .restart local v15    # "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    invoke-virtual {v15, v6}, Lcom/android/internal/telephony/uicc/AdnRecord;->setAnr(Ljava/lang/String;)V

    .line 962
    move-object/from16 v0, p0

    iget-object v0, v0, Lzte/contact/zteUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v12, v15}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 963
    if-eqz v10, :cond_b

    const/16 v18, 0xff

    move/from16 v0, v18

    if-eq v10, v0, :cond_b

    .line 964
    move-object/from16 v0, p0

    iget-object v0, v0, Lzte/contact/zteUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/uicc/AdnRecord;

    .line 965
    .restart local v5    # "Rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    invoke-virtual {v5, v10}, Lcom/android/internal/telephony/uicc/AdnRecord;->setAnrExtNumber(I)V

    .line 966
    move-object/from16 v0, p0

    iget-object v0, v0, Lzte/contact/zteUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v12, v5}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 968
    .end local v5    # "Rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    :cond_b
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_4
.end method

.method private updatePhoneRecord(I)V
    .locals 22
    .param p1, "recordNum"    # I

    .prologue
    .line 678
    const-string v18, "RIL_zteUsimPhoneBookManager"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "updatePhoneRecord recordNum = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    move-object/from16 v0, p0

    iget-object v0, v0, Lzte/contact/zteUsimPhoneBookManager;->upb:[Lzte/contact/zteUsimPhoneBookManager$usimphonebook;

    move-object/from16 v18, v0

    aget-object v18, v18, p1

    move-object/from16 v0, v18

    iget-object v0, v0, Lzte/contact/zteUsimPhoneBookManager$usimphonebook;->adnlist:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v12

    .line 680
    .local v12, "numAdnRecs":I
    const-string v18, "RIL_zteUsimPhoneBookManager"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "updatePhoneRecord numAdnRecs = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    if-ge v10, v12, :cond_15

    .line 683
    :try_start_0
    const-string v17, ""

    .line 684
    .local v17, "tag":Ljava/lang/String;
    const-string v13, ""

    .line 685
    .local v13, "number":Ljava/lang/String;
    const/4 v9, -0x1

    .line 686
    .local v9, "ext1id":I
    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v7, v0, [Ljava/lang/String;

    .line 687
    .local v7, "emails":[Ljava/lang/String;
    const/16 v18, 0x0

    const-string v19, ""

    aput-object v19, v7, v18

    .line 688
    const/16 v6, 0xff

    .line 689
    .local v6, "emailrecNum":I
    const-string v4, ""

    .line 690
    .local v4, "anr":Ljava/lang/String;
    const/16 v5, 0xff

    .line 691
    .local v5, "anrrecNum":I
    const/4 v11, 0x0

    .line 692
    .local v11, "iaprecord":[B
    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v15, v0, [B

    .line 693
    .local v15, "recid":[B
    const/16 v18, 0x1

    add-int/lit8 v19, p1, 0x1

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0xff

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-byte v0, v0

    move/from16 v19, v0

    aput-byte v19, v15, v18

    .line 694
    new-instance v14, Lcom/android/internal/telephony/uicc/AdnRecord;

    const-string v18, ""

    const-string v19, ""

    const-string v20, ""

    const-string v21, ""

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move-object/from16 v3, v21

    invoke-direct {v14, v0, v1, v2, v3}, Lcom/android/internal/telephony/uicc/AdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 695
    .local v14, "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    const/16 v18, 0x0

    add-int/lit8 v19, v10, 0x1

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0xff

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-byte v0, v0

    move/from16 v19, v0

    aput-byte v19, v15, v18

    .line 697
    invoke-static {v15}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v16

    .line 698
    .local v16, "srecid":Ljava/lang/String;
    if-eqz v14, :cond_d

    .line 699
    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Lcom/android/internal/telephony/uicc/AdnRecord;->setRecid(Ljava/lang/String;)V

    .line 704
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lzte/contact/zteUsimPhoneBookManager;->upb:[Lzte/contact/zteUsimPhoneBookManager$usimphonebook;

    move-object/from16 v18, v0

    aget-object v18, v18, p1

    move-object/from16 v0, v18

    iget-object v0, v0, Lzte/contact/zteUsimPhoneBookManager$usimphonebook;->adnlist:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/internal/telephony/uicc/AdnRecord;

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAlphaTag()Ljava/lang/String;

    move-result-object v17

    .line 705
    move-object/from16 v0, p0

    iget-object v0, v0, Lzte/contact/zteUsimPhoneBookManager;->upb:[Lzte/contact/zteUsimPhoneBookManager$usimphonebook;

    move-object/from16 v18, v0

    aget-object v18, v18, p1

    move-object/from16 v0, v18

    iget-object v0, v0, Lzte/contact/zteUsimPhoneBookManager$usimphonebook;->adnlist:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/internal/telephony/uicc/AdnRecord;

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/uicc/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v13

    .line 706
    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Lcom/android/internal/telephony/uicc/AdnRecord;->setAlphaTag(Ljava/lang/String;)V

    .line 707
    invoke-virtual {v14, v13}, Lcom/android/internal/telephony/uicc/AdnRecord;->setNumber(Ljava/lang/String;)V

    .line 708
    move-object/from16 v0, p0

    iget-object v0, v0, Lzte/contact/zteUsimPhoneBookManager;->upb:[Lzte/contact/zteUsimPhoneBookManager$usimphonebook;

    move-object/from16 v18, v0

    aget-object v18, v18, p1

    move-object/from16 v0, v18

    iget-object v0, v0, Lzte/contact/zteUsimPhoneBookManager$usimphonebook;->adnlist:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/internal/telephony/uicc/AdnRecord;

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/uicc/AdnRecord;->hasExtendedRecord()Z

    move-result v18

    if-eqz v18, :cond_0

    .line 709
    move-object/from16 v0, p0

    iget-object v0, v0, Lzte/contact/zteUsimPhoneBookManager;->upb:[Lzte/contact/zteUsimPhoneBookManager$usimphonebook;

    move-object/from16 v18, v0

    aget-object v18, v18, p1

    move-object/from16 v0, v18

    iget-object v0, v0, Lzte/contact/zteUsimPhoneBookManager$usimphonebook;->adnlist:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/internal/telephony/uicc/AdnRecord;

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/uicc/AdnRecord;->getExtNumber()I

    move-result v9

    .line 710
    invoke-virtual {v14, v9}, Lcom/android/internal/telephony/uicc/AdnRecord;->setExtNumber(I)V

    .line 712
    :cond_0
    invoke-virtual/range {p0 .. p1}, Lzte/contact/zteUsimPhoneBookManager;->isSupportIAP(I)Z

    move-result v18

    if-eqz v18, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lzte/contact/zteUsimPhoneBookManager;->upb:[Lzte/contact/zteUsimPhoneBookManager$usimphonebook;

    move-object/from16 v18, v0

    aget-object v18, v18, p1

    move-object/from16 v0, v18

    iget-object v0, v0, Lzte/contact/zteUsimPhoneBookManager$usimphonebook;->iaplist:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v18

    move/from16 v0, v18

    if-ge v10, v0, :cond_1

    .line 713
    move-object/from16 v0, p0

    iget-object v0, v0, Lzte/contact/zteUsimPhoneBookManager;->upb:[Lzte/contact/zteUsimPhoneBookManager$usimphonebook;

    move-object/from16 v18, v0

    aget-object v18, v18, p1

    move-object/from16 v0, v18

    iget-object v0, v0, Lzte/contact/zteUsimPhoneBookManager$usimphonebook;->iaplist:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    .end local v11    # "iaprecord":[B
    check-cast v11, [B

    .line 714
    .restart local v11    # "iaprecord":[B
    const-string v18, "RIL_zteUsimPhoneBookManager"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "updatePhoneRecord IAP i = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 717
    :cond_1
    invoke-virtual/range {p0 .. p1}, Lzte/contact/zteUsimPhoneBookManager;->isSupportEmail(I)Z

    move-result v18

    if-eqz v18, :cond_6

    .line 718
    invoke-static {}, Lzte/contact/zteUsimPhoneBookManager;->isEMAILTYP2()Z

    move-result v18

    if-eqz v18, :cond_10

    .line 719
    if-eqz v11, :cond_e

    .line 720
    move-object/from16 v0, p0

    iget v0, v0, Lzte/contact/zteUsimPhoneBookManager;->mEmailTagNumberInIap:I

    move/from16 v18, v0

    aget-byte v18, v11, v18

    move/from16 v0, v18

    and-int/lit16 v6, v0, 0xff

    .line 721
    const-string v18, "RIL_zteUsimPhoneBookManager"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "updatePhoneRecord IAP  emailrecNum = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "i = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 722
    const/16 v18, 0xff

    move/from16 v0, v18

    if-eq v6, v0, :cond_2

    const/16 v18, -0x1

    move/from16 v0, v18

    if-ne v6, v0, :cond_4

    .line 723
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lzte/contact/zteUsimPhoneBookManager;->upb:[Lzte/contact/zteUsimPhoneBookManager$usimphonebook;

    move-object/from16 v18, v0

    aget-object v18, v18, p1

    move-object/from16 v0, v18

    iget-object v0, v0, Lzte/contact/zteUsimPhoneBookManager$usimphonebook;->valForEmailId:Ljava/util/Map;

    move-object/from16 v18, v0

    add-int/lit8 v19, v10, 0x1

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-interface/range {v18 .. v19}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_3

    .line 724
    move-object/from16 v0, p0

    iget-object v0, v0, Lzte/contact/zteUsimPhoneBookManager;->upb:[Lzte/contact/zteUsimPhoneBookManager$usimphonebook;

    move-object/from16 v18, v0

    aget-object v18, v18, p1

    move-object/from16 v0, v18

    iget-object v0, v0, Lzte/contact/zteUsimPhoneBookManager$usimphonebook;->valForEmailId:Ljava/util/Map;

    move-object/from16 v18, v0

    add-int/lit8 v19, v10, 0x1

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-interface/range {v18 .. v19}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Integer;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 725
    :cond_3
    const-string v18, "RIL_zteUsimPhoneBookManager"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "updatePhoneRecord EMAIL  emailrecNum = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "i = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 726
    const/16 v18, 0xff

    move/from16 v0, v18

    if-eq v6, v0, :cond_4

    const/16 v18, -0x1

    move/from16 v0, v18

    if-eq v6, v0, :cond_4

    .line 727
    move-object/from16 v0, p0

    iget v0, v0, Lzte/contact/zteUsimPhoneBookManager;->mEmailTagNumberInIap:I

    move/from16 v18, v0

    and-int/lit16 v0, v6, 0xff

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-byte v0, v0

    move/from16 v19, v0

    aput-byte v19, v11, v18

    .line 728
    move-object/from16 v0, p0

    iget-object v0, v0, Lzte/contact/zteUsimPhoneBookManager;->upb:[Lzte/contact/zteUsimPhoneBookManager$usimphonebook;

    move-object/from16 v18, v0

    aget-object v18, v18, p1

    move-object/from16 v0, v18

    iget-object v0, v0, Lzte/contact/zteUsimPhoneBookManager$usimphonebook;->iaplist:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v10, v11}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 729
    const-string v19, "RIL_zteUsimPhoneBookManager"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "updatePhoneRecord EMAIL  upb[recordNum].iaplist.get(i)[mEmailTagNumberInIap] = "

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lzte/contact/zteUsimPhoneBookManager;->upb:[Lzte/contact/zteUsimPhoneBookManager$usimphonebook;

    move-object/from16 v18, v0

    aget-object v18, v18, p1

    move-object/from16 v0, v18

    iget-object v0, v0, Lzte/contact/zteUsimPhoneBookManager$usimphonebook;->iaplist:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, [B

    move-object/from16 v0, p0

    iget v0, v0, Lzte/contact/zteUsimPhoneBookManager;->mEmailTagNumberInIap:I

    move/from16 v21, v0

    aget-byte v18, v18, v21

    move-object/from16 v0, v20

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v20, "i = "

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 732
    :cond_4
    const/16 v18, -0x1

    move/from16 v0, v18

    if-ne v6, v0, :cond_5

    const/16 v6, 0xff

    .line 743
    :cond_5
    :goto_2
    const-string v18, "RIL_zteUsimPhoneBookManager"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "updatePhoneRecord emailrecNum = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "i = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 744
    const/16 v18, 0xff

    move/from16 v0, v18

    if-eq v6, v0, :cond_6

    if-eqz v6, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lzte/contact/zteUsimPhoneBookManager;->upb:[Lzte/contact/zteUsimPhoneBookManager$usimphonebook;

    move-object/from16 v18, v0

    aget-object v18, v18, p1

    move-object/from16 v0, v18

    iget-object v0, v0, Lzte/contact/zteUsimPhoneBookManager$usimphonebook;->emaillist:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v18

    move/from16 v0, v18

    if-gt v6, v0, :cond_6

    .line 745
    move-object/from16 v0, p0

    iget-object v0, v0, Lzte/contact/zteUsimPhoneBookManager;->upb:[Lzte/contact/zteUsimPhoneBookManager$usimphonebook;

    move-object/from16 v18, v0

    aget-object v18, v18, p1

    move-object/from16 v0, v18

    iget-object v0, v0, Lzte/contact/zteUsimPhoneBookManager$usimphonebook;->emaillist:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    add-int/lit8 v19, v6, -0x1

    invoke-virtual/range {v18 .. v19}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/internal/telephony/uicc/AdnRecord;

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/uicc/AdnRecord;->getEmails()[Ljava/lang/String;

    move-result-object v7

    .line 748
    :cond_6
    invoke-virtual {v14, v7}, Lcom/android/internal/telephony/uicc/AdnRecord;->setEmails([Ljava/lang/String;)V

    .line 749
    invoke-virtual/range {p0 .. p1}, Lzte/contact/zteUsimPhoneBookManager;->isSupportANR(I)Z

    move-result v18

    if-eqz v18, :cond_b

    .line 750
    invoke-virtual/range {p0 .. p0}, Lzte/contact/zteUsimPhoneBookManager;->isANRTYP2()Z

    move-result v18

    if-eqz v18, :cond_13

    .line 751
    if-eqz v11, :cond_11

    .line 752
    move-object/from16 v0, p0

    iget v0, v0, Lzte/contact/zteUsimPhoneBookManager;->mAnrTagNumberInIap:I

    move/from16 v18, v0

    aget-byte v18, v11, v18

    move/from16 v0, v18

    and-int/lit16 v5, v0, 0xff

    .line 753
    const/16 v18, 0xff

    move/from16 v0, v18

    if-eq v5, v0, :cond_7

    const/16 v18, -0x1

    move/from16 v0, v18

    if-ne v5, v0, :cond_9

    .line 754
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lzte/contact/zteUsimPhoneBookManager;->upb:[Lzte/contact/zteUsimPhoneBookManager$usimphonebook;

    move-object/from16 v18, v0

    aget-object v18, v18, p1

    move-object/from16 v0, v18

    iget-object v0, v0, Lzte/contact/zteUsimPhoneBookManager$usimphonebook;->valForAnrId:Ljava/util/Map;

    move-object/from16 v18, v0

    add-int/lit8 v19, v10, 0x1

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-interface/range {v18 .. v19}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_8

    .line 755
    move-object/from16 v0, p0

    iget-object v0, v0, Lzte/contact/zteUsimPhoneBookManager;->upb:[Lzte/contact/zteUsimPhoneBookManager$usimphonebook;

    move-object/from16 v18, v0

    aget-object v18, v18, p1

    move-object/from16 v0, v18

    iget-object v0, v0, Lzte/contact/zteUsimPhoneBookManager$usimphonebook;->valForAnrId:Ljava/util/Map;

    move-object/from16 v18, v0

    add-int/lit8 v19, v10, 0x1

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-interface/range {v18 .. v19}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Integer;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 756
    :cond_8
    const-string v18, "RIL_zteUsimPhoneBookManager"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "updatePhoneRecord ANR  anrrecNum = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "i = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 757
    const/16 v18, 0xff

    move/from16 v0, v18

    if-eq v5, v0, :cond_9

    const/16 v18, -0x1

    move/from16 v0, v18

    if-eq v5, v0, :cond_9

    .line 758
    move-object/from16 v0, p0

    iget v0, v0, Lzte/contact/zteUsimPhoneBookManager;->mAnrTagNumberInIap:I

    move/from16 v18, v0

    and-int/lit16 v0, v5, 0xff

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-byte v0, v0

    move/from16 v19, v0

    aput-byte v19, v11, v18

    .line 759
    move-object/from16 v0, p0

    iget-object v0, v0, Lzte/contact/zteUsimPhoneBookManager;->upb:[Lzte/contact/zteUsimPhoneBookManager$usimphonebook;

    move-object/from16 v18, v0

    aget-object v18, v18, p1

    move-object/from16 v0, v18

    iget-object v0, v0, Lzte/contact/zteUsimPhoneBookManager$usimphonebook;->iaplist:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v10, v11}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 760
    const-string v19, "RIL_zteUsimPhoneBookManager"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "updatePhoneRecord upb[recordNum].iaplist.get(i)[mAnrTagNumberInIap] = "

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lzte/contact/zteUsimPhoneBookManager;->upb:[Lzte/contact/zteUsimPhoneBookManager$usimphonebook;

    move-object/from16 v18, v0

    aget-object v18, v18, p1

    move-object/from16 v0, v18

    iget-object v0, v0, Lzte/contact/zteUsimPhoneBookManager$usimphonebook;->iaplist:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, [B

    move-object/from16 v0, p0

    iget v0, v0, Lzte/contact/zteUsimPhoneBookManager;->mAnrTagNumberInIap:I

    move/from16 v21, v0

    aget-byte v18, v18, v21

    move-object/from16 v0, v20

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v20, "i = "

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 774
    :cond_9
    :goto_3
    const/16 v18, -0x1

    move/from16 v0, v18

    if-ne v5, v0, :cond_a

    const/16 v5, 0xff

    .line 775
    :cond_a
    const/16 v18, 0xff

    move/from16 v0, v18

    if-eq v5, v0, :cond_14

    if-eqz v5, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lzte/contact/zteUsimPhoneBookManager;->upb:[Lzte/contact/zteUsimPhoneBookManager$usimphonebook;

    move-object/from16 v18, v0

    aget-object v18, v18, p1

    move-object/from16 v0, v18

    iget-object v0, v0, Lzte/contact/zteUsimPhoneBookManager$usimphonebook;->anrlist:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v18

    move/from16 v0, v18

    if-gt v5, v0, :cond_14

    .line 776
    move-object/from16 v0, p0

    iget-object v0, v0, Lzte/contact/zteUsimPhoneBookManager;->upb:[Lzte/contact/zteUsimPhoneBookManager$usimphonebook;

    move-object/from16 v18, v0

    aget-object v18, v18, p1

    move-object/from16 v0, v18

    iget-object v0, v0, Lzte/contact/zteUsimPhoneBookManager$usimphonebook;->anrlist:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    add-int/lit8 v19, v5, -0x1

    invoke-virtual/range {v18 .. v19}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/internal/telephony/uicc/AdnRecord;

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAnr()Ljava/lang/String;

    move-result-object v4

    .line 781
    :cond_b
    :goto_4
    invoke-virtual {v14, v4}, Lcom/android/internal/telephony/uicc/AdnRecord;->setAnr(Ljava/lang/String;)V

    .line 783
    invoke-virtual/range {p0 .. p1}, Lzte/contact/zteUsimPhoneBookManager;->isSupportANR(I)Z

    move-result v18

    if-eqz v18, :cond_c

    const/16 v18, 0xff

    move/from16 v0, v18

    if-eq v5, v0, :cond_c

    if-eqz v5, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lzte/contact/zteUsimPhoneBookManager;->upb:[Lzte/contact/zteUsimPhoneBookManager$usimphonebook;

    move-object/from16 v18, v0

    aget-object v18, v18, p1

    move-object/from16 v0, v18

    iget-object v0, v0, Lzte/contact/zteUsimPhoneBookManager$usimphonebook;->anrlist:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v18

    move/from16 v0, v18

    if-gt v5, v0, :cond_c

    .line 785
    move-object/from16 v0, p0

    iget-object v0, v0, Lzte/contact/zteUsimPhoneBookManager;->upb:[Lzte/contact/zteUsimPhoneBookManager$usimphonebook;

    move-object/from16 v18, v0

    aget-object v18, v18, p1

    move-object/from16 v0, v18

    iget-object v0, v0, Lzte/contact/zteUsimPhoneBookManager$usimphonebook;->anrlist:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    add-int/lit8 v19, v5, -0x1

    invoke-virtual/range {v18 .. v19}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/internal/telephony/uicc/AdnRecord;

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/uicc/AdnRecord;->hasAnrExtendedRecord()Z

    move-result v18

    if-eqz v18, :cond_c

    .line 786
    move-object/from16 v0, p0

    iget-object v0, v0, Lzte/contact/zteUsimPhoneBookManager;->upb:[Lzte/contact/zteUsimPhoneBookManager$usimphonebook;

    move-object/from16 v18, v0

    aget-object v18, v18, p1

    move-object/from16 v0, v18

    iget-object v0, v0, Lzte/contact/zteUsimPhoneBookManager$usimphonebook;->anrlist:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    add-int/lit8 v19, v5, -0x1

    invoke-virtual/range {v18 .. v19}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/internal/telephony/uicc/AdnRecord;

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAnrExtNumber()I

    move-result v9

    .line 787
    invoke-virtual {v14, v9}, Lcom/android/internal/telephony/uicc/AdnRecord;->setAnrExtNumber(I)V

    .line 791
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lzte/contact/zteUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 682
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_0

    .line 701
    :cond_d
    new-instance v14, Lcom/android/internal/telephony/uicc/AdnRecord;

    .end local v14    # "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    const-string v18, ""

    const-string v19, ""

    const-string v20, ""

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move-object/from16 v3, v16

    invoke-direct {v14, v0, v1, v2, v3}, Lcom/android/internal/telephony/uicc/AdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .restart local v14    # "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    goto/16 :goto_1

    .line 734
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lzte/contact/zteUsimPhoneBookManager;->upb:[Lzte/contact/zteUsimPhoneBookManager$usimphonebook;

    move-object/from16 v18, v0

    aget-object v18, v18, p1

    move-object/from16 v0, v18

    iget-object v0, v0, Lzte/contact/zteUsimPhoneBookManager$usimphonebook;->valForEmailId:Ljava/util/Map;

    move-object/from16 v18, v0

    add-int/lit8 v19, v10, 0x1

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-interface/range {v18 .. v19}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_f

    .line 735
    move-object/from16 v0, p0

    iget-object v0, v0, Lzte/contact/zteUsimPhoneBookManager;->upb:[Lzte/contact/zteUsimPhoneBookManager$usimphonebook;

    move-object/from16 v18, v0

    aget-object v18, v18, p1

    move-object/from16 v0, v18

    iget-object v0, v0, Lzte/contact/zteUsimPhoneBookManager$usimphonebook;->valForEmailId:Ljava/util/Map;

    move-object/from16 v18, v0

    add-int/lit8 v19, v10, 0x1

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-interface/range {v18 .. v19}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Integer;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v6

    goto/16 :goto_2

    .line 737
    :cond_f
    const/16 v6, 0xff

    goto/16 :goto_2

    .line 741
    :cond_10
    add-int/lit8 v6, v10, 0x1

    goto/16 :goto_2

    .line 765
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lzte/contact/zteUsimPhoneBookManager;->upb:[Lzte/contact/zteUsimPhoneBookManager$usimphonebook;

    move-object/from16 v18, v0

    aget-object v18, v18, p1

    move-object/from16 v0, v18

    iget-object v0, v0, Lzte/contact/zteUsimPhoneBookManager$usimphonebook;->valForAnrId:Ljava/util/Map;

    move-object/from16 v18, v0

    add-int/lit8 v19, v10, 0x1

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-interface/range {v18 .. v19}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_12

    .line 766
    move-object/from16 v0, p0

    iget-object v0, v0, Lzte/contact/zteUsimPhoneBookManager;->upb:[Lzte/contact/zteUsimPhoneBookManager$usimphonebook;

    move-object/from16 v18, v0

    aget-object v18, v18, p1

    move-object/from16 v0, v18

    iget-object v0, v0, Lzte/contact/zteUsimPhoneBookManager$usimphonebook;->valForAnrId:Ljava/util/Map;

    move-object/from16 v18, v0

    add-int/lit8 v19, v10, 0x1

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-interface/range {v18 .. v19}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Integer;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v5

    goto/16 :goto_3

    .line 768
    :cond_12
    const/16 v5, 0xff

    goto/16 :goto_3

    .line 772
    :cond_13
    add-int/lit8 v5, v10, 0x1

    goto/16 :goto_3

    .line 778
    :cond_14
    const-string v4, ""
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_4

    .line 794
    .end local v4    # "anr":Ljava/lang/String;
    .end local v5    # "anrrecNum":I
    .end local v6    # "emailrecNum":I
    .end local v7    # "emails":[Ljava/lang/String;
    .end local v9    # "ext1id":I
    .end local v11    # "iaprecord":[B
    .end local v13    # "number":Ljava/lang/String;
    .end local v14    # "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    .end local v15    # "recid":[B
    .end local v16    # "srecid":Ljava/lang/String;
    .end local v17    # "tag":Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 795
    .local v8, "ex":Ljava/lang/Exception;
    const-string v18, "RIL_zteUsimPhoneBookManager"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "updatePhoneRecord ex = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 797
    .end local v8    # "ex":Ljava/lang/Exception;
    :cond_15
    const-string v18, "RIL_zteUsimPhoneBookManager"

    const-string v19, "updatePhoneRecord done "

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 798
    return-void
.end method


# virtual methods
.method public GetAnrdatas()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/uicc/AdnRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 323
    iget-object v0, p0, Lzte/contact/zteUsimPhoneBookManager;->Anrdatas:Ljava/util/ArrayList;

    return-object v0
.end method

.method public GetEmaildatas()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/uicc/AdnRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 320
    iget-object v0, p0, Lzte/contact/zteUsimPhoneBookManager;->Emaildatas:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getAdnFileld(I)I
    .locals 5
    .param p1, "recNum"    # I

    .prologue
    const/16 v4, 0xc0

    const/4 v0, 0x0

    .line 534
    iget-object v2, p0, Lzte/contact/zteUsimPhoneBookManager;->mPbrFile:Lzte/contact/zteUsimPhoneBookManager$PbrFile;

    if-nez v2, :cond_1

    .line 548
    :cond_0
    :goto_0
    return v0

    .line 537
    :cond_1
    iget-object v2, p0, Lzte/contact/zteUsimPhoneBookManager;->mPbrFile:Lzte/contact/zteUsimPhoneBookManager$PbrFile;

    iget-object v2, v2, Lzte/contact/zteUsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    if-eqz v2, :cond_0

    .line 539
    iget-object v2, p0, Lzte/contact/zteUsimPhoneBookManager;->mPbrFile:Lzte/contact/zteUsimPhoneBookManager$PbrFile;

    iget-object v2, v2, Lzte/contact/zteUsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 540
    .local v1, "fileIds":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .line 541
    .local v0, "efid":I
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 545
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 546
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public getAllAdnFileId()[I
    .locals 3

    .prologue
    .line 638
    const/4 v0, 0x0

    .line 639
    .local v0, "FileId":[I
    iget v2, p0, Lzte/contact/zteUsimPhoneBookManager;->pbrNumbers:I

    new-array v0, v2, [I

    .line 640
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lzte/contact/zteUsimPhoneBookManager;->pbrNumbers:I

    if-ge v1, v2, :cond_0

    .line 642
    invoke-virtual {p0, v1}, Lzte/contact/zteUsimPhoneBookManager;->getAdnFileld(I)I

    move-result v2

    aput v2, v0, v1

    .line 640
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 644
    :cond_0
    return-object v0
.end method

.method public getAllAnrFileId()[I
    .locals 3

    .prologue
    .line 668
    const/4 v0, 0x0

    .line 669
    .local v0, "FileId":[I
    iget v2, p0, Lzte/contact/zteUsimPhoneBookManager;->pbrNumbers:I

    new-array v0, v2, [I

    .line 670
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lzte/contact/zteUsimPhoneBookManager;->pbrNumbers:I

    if-ge v1, v2, :cond_0

    .line 672
    invoke-virtual {p0, v1}, Lzte/contact/zteUsimPhoneBookManager;->getAnrFileld(I)I

    move-result v2

    aput v2, v0, v1

    .line 670
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 674
    :cond_0
    return-object v0
.end method

.method public getAllEmailFileId()[I
    .locals 3

    .prologue
    .line 618
    const/4 v0, 0x0

    .line 619
    .local v0, "FileId":[I
    iget v2, p0, Lzte/contact/zteUsimPhoneBookManager;->pbrNumbers:I

    new-array v0, v2, [I

    .line 620
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lzte/contact/zteUsimPhoneBookManager;->pbrNumbers:I

    if-ge v1, v2, :cond_0

    .line 622
    invoke-virtual {p0, v1}, Lzte/contact/zteUsimPhoneBookManager;->getEmailFileId(I)I

    move-result v2

    aput v2, v0, v1

    .line 620
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 624
    :cond_0
    return-object v0
.end method

.method public getAllExt1Fileld()[I
    .locals 3

    .prologue
    .line 648
    const/4 v0, 0x0

    .line 649
    .local v0, "FileId":[I
    iget v2, p0, Lzte/contact/zteUsimPhoneBookManager;->pbrNumbers:I

    new-array v0, v2, [I

    .line 650
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lzte/contact/zteUsimPhoneBookManager;->pbrNumbers:I

    if-ge v1, v2, :cond_0

    .line 652
    invoke-virtual {p0, v1}, Lzte/contact/zteUsimPhoneBookManager;->getExt1Fileld(I)I

    move-result v2

    aput v2, v0, v1

    .line 650
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 654
    :cond_0
    return-object v0
.end method

.method public getAllIapFileId()[I
    .locals 3

    .prologue
    .line 628
    const/4 v0, 0x0

    .line 629
    .local v0, "FileId":[I
    iget v2, p0, Lzte/contact/zteUsimPhoneBookManager;->pbrNumbers:I

    new-array v0, v2, [I

    .line 630
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lzte/contact/zteUsimPhoneBookManager;->pbrNumbers:I

    if-ge v1, v2, :cond_0

    .line 632
    invoke-virtual {p0, v1}, Lzte/contact/zteUsimPhoneBookManager;->getIapFileId(I)I

    move-result v2

    aput v2, v0, v1

    .line 630
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 634
    :cond_0
    return-object v0
.end method

.method public getAllSfiFileId()[I
    .locals 3

    .prologue
    .line 658
    const/4 v0, 0x0

    .line 659
    .local v0, "FileId":[I
    iget v2, p0, Lzte/contact/zteUsimPhoneBookManager;->pbrNumbers:I

    new-array v0, v2, [I

    .line 660
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lzte/contact/zteUsimPhoneBookManager;->pbrNumbers:I

    if-ge v1, v2, :cond_0

    .line 662
    invoke-virtual {p0, v1}, Lzte/contact/zteUsimPhoneBookManager;->getSfiFileld(I)I

    move-result v2

    aput v2, v0, v1

    .line 660
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 664
    :cond_0
    return-object v0
.end method

.method public getAnrFileId(I)I
    .locals 5
    .param p1, "recNum"    # I

    .prologue
    const/16 v4, 0xc4

    const/4 v0, 0x0

    .line 477
    iget-object v2, p0, Lzte/contact/zteUsimPhoneBookManager;->mPbrFile:Lzte/contact/zteUsimPhoneBookManager$PbrFile;

    if-nez v2, :cond_1

    .line 491
    :cond_0
    :goto_0
    return v0

    .line 480
    :cond_1
    iget-object v2, p0, Lzte/contact/zteUsimPhoneBookManager;->mPbrFile:Lzte/contact/zteUsimPhoneBookManager$PbrFile;

    iget-object v2, v2, Lzte/contact/zteUsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    if-eqz v2, :cond_0

    .line 482
    iget-object v2, p0, Lzte/contact/zteUsimPhoneBookManager;->mPbrFile:Lzte/contact/zteUsimPhoneBookManager$PbrFile;

    iget-object v2, v2, Lzte/contact/zteUsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 483
    .local v1, "fileIds":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .line 484
    .local v0, "efid":I
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 488
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 489
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public getAnrFileld(I)I
    .locals 5
    .param p1, "recNum"    # I

    .prologue
    const/16 v4, 0xc4

    const/4 v0, 0x0

    .line 591
    iget-object v2, p0, Lzte/contact/zteUsimPhoneBookManager;->mPbrFile:Lzte/contact/zteUsimPhoneBookManager$PbrFile;

    if-nez v2, :cond_1

    .line 605
    :cond_0
    :goto_0
    return v0

    .line 594
    :cond_1
    iget-object v2, p0, Lzte/contact/zteUsimPhoneBookManager;->mPbrFile:Lzte/contact/zteUsimPhoneBookManager$PbrFile;

    iget-object v2, v2, Lzte/contact/zteUsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    if-eqz v2, :cond_0

    .line 596
    iget-object v2, p0, Lzte/contact/zteUsimPhoneBookManager;->mPbrFile:Lzte/contact/zteUsimPhoneBookManager$PbrFile;

    iget-object v2, v2, Lzte/contact/zteUsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 597
    .local v1, "fileIds":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .line 598
    .local v0, "efid":I
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 602
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 603
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public getAnriniap()I
    .locals 1

    .prologue
    .line 329
    iget v0, p0, Lzte/contact/zteUsimPhoneBookManager;->mAnrTagNumberInIap:I

    return v0
.end method

.method public getEXT1efid()I
    .locals 1

    .prologue
    .line 1621
    iget v0, p0, Lzte/contact/zteUsimPhoneBookManager;->ext1Efid:I

    return v0
.end method

.method public getEfRecordSize()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "[I>;"
        }
    .end annotation

    .prologue
    .line 154
    iget-object v0, p0, Lzte/contact/zteUsimPhoneBookManager;->mRecordSize:Ljava/util/Map;

    return-object v0
.end method

.method public getEmailFileId(I)I
    .locals 5
    .param p1, "recNum"    # I

    .prologue
    const/16 v4, 0xca

    const/4 v0, 0x0

    .line 496
    iget-object v2, p0, Lzte/contact/zteUsimPhoneBookManager;->mPbrFile:Lzte/contact/zteUsimPhoneBookManager$PbrFile;

    if-nez v2, :cond_1

    .line 510
    :cond_0
    :goto_0
    return v0

    .line 499
    :cond_1
    iget-object v2, p0, Lzte/contact/zteUsimPhoneBookManager;->mPbrFile:Lzte/contact/zteUsimPhoneBookManager$PbrFile;

    iget-object v2, v2, Lzte/contact/zteUsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    if-eqz v2, :cond_0

    .line 501
    iget-object v2, p0, Lzte/contact/zteUsimPhoneBookManager;->mPbrFile:Lzte/contact/zteUsimPhoneBookManager$PbrFile;

    iget-object v2, v2, Lzte/contact/zteUsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 502
    .local v1, "fileIds":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .line 503
    .local v0, "efid":I
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 507
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 508
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public getEmailiniap()I
    .locals 1

    .prologue
    .line 326
    iget v0, p0, Lzte/contact/zteUsimPhoneBookManager;->mEmailTagNumberInIap:I

    return v0
.end method

.method public getExt1Fileld(I)I
    .locals 5
    .param p1, "recNum"    # I

    .prologue
    const/16 v4, 0xc2

    const/4 v0, 0x0

    .line 553
    iget-object v2, p0, Lzte/contact/zteUsimPhoneBookManager;->mPbrFile:Lzte/contact/zteUsimPhoneBookManager$PbrFile;

    if-nez v2, :cond_1

    .line 567
    :cond_0
    :goto_0
    return v0

    .line 556
    :cond_1
    iget-object v2, p0, Lzte/contact/zteUsimPhoneBookManager;->mPbrFile:Lzte/contact/zteUsimPhoneBookManager$PbrFile;

    iget-object v2, v2, Lzte/contact/zteUsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    if-eqz v2, :cond_0

    .line 558
    iget-object v2, p0, Lzte/contact/zteUsimPhoneBookManager;->mPbrFile:Lzte/contact/zteUsimPhoneBookManager$PbrFile;

    iget-object v2, v2, Lzte/contact/zteUsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 559
    .local v1, "fileIds":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .line 560
    .local v0, "efid":I
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 564
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 565
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public getIapFileId(I)I
    .locals 5
    .param p1, "recNum"    # I

    .prologue
    const/16 v4, 0xc1

    const/4 v0, 0x0

    .line 515
    iget-object v2, p0, Lzte/contact/zteUsimPhoneBookManager;->mPbrFile:Lzte/contact/zteUsimPhoneBookManager$PbrFile;

    if-nez v2, :cond_1

    .line 529
    :cond_0
    :goto_0
    return v0

    .line 518
    :cond_1
    iget-object v2, p0, Lzte/contact/zteUsimPhoneBookManager;->mPbrFile:Lzte/contact/zteUsimPhoneBookManager$PbrFile;

    iget-object v2, v2, Lzte/contact/zteUsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    if-eqz v2, :cond_0

    .line 520
    iget-object v2, p0, Lzte/contact/zteUsimPhoneBookManager;->mPbrFile:Lzte/contact/zteUsimPhoneBookManager$PbrFile;

    iget-object v2, v2, Lzte/contact/zteUsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 521
    .local v1, "fileIds":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .line 522
    .local v0, "efid":I
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 526
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 527
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public getSfiFileld(I)I
    .locals 5
    .param p1, "recNum"    # I

    .prologue
    const/16 v4, 0xc0

    const/4 v1, 0x0

    .line 572
    iget-object v2, p0, Lzte/contact/zteUsimPhoneBookManager;->mPbrFile:Lzte/contact/zteUsimPhoneBookManager$PbrFile;

    if-nez v2, :cond_1

    .line 586
    :cond_0
    :goto_0
    return v1

    .line 575
    :cond_1
    iget-object v2, p0, Lzte/contact/zteUsimPhoneBookManager;->mPbrFile:Lzte/contact/zteUsimPhoneBookManager$PbrFile;

    iget-object v2, v2, Lzte/contact/zteUsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    if-eqz v2, :cond_0

    .line 577
    iget-object v2, p0, Lzte/contact/zteUsimPhoneBookManager;->mPbrFileSfi:Lzte/contact/zteUsimPhoneBookManager$PbrFileSfi;

    iget-object v2, v2, Lzte/contact/zteUsimPhoneBookManager$PbrFileSfi;->mSfiFileIds:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 578
    .local v0, "fileIds":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .line 579
    .local v1, "sfi":I
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 583
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 584
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0
.end method

.method public getUsimRecordSize()I
    .locals 7

    .prologue
    .line 1605
    const/4 v3, 0x0

    .line 1606
    .local v3, "usimNumbers":I
    iget-object v4, p0, Lzte/contact/zteUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    if-eqz v4, :cond_3

    .line 1607
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v4, p0, Lzte/contact/zteUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_3

    .line 1608
    iget-object v4, p0, Lzte/contact/zteUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/uicc/AdnRecord;

    .line 1610
    .local v2, "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    const-string v0, ""

    .line 1611
    .local v0, "email":Ljava/lang/String;
    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/AdnRecord;->getEmails()[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/AdnRecord;->getEmails()[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v0, v4, v5

    .line 1612
    :cond_0
    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAlphaTag()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, ""

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAnr()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1614
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 1607
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1617
    .end local v0    # "email":Ljava/lang/String;
    .end local v1    # "i":I
    .end local v2    # "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    :cond_3
    const-string v4, "RIL_zteUsimPhoneBookManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MY getUsimRecordSize ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1618
    return v3
.end method

.method public getadnlist(I)Ljava/util/ArrayList;
    .locals 1
    .param p1, "recnumber"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/uicc/AdnRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 258
    iget-object v0, p0, Lzte/contact/zteUsimPhoneBookManager;->upb:[Lzte/contact/zteUsimPhoneBookManager$usimphonebook;

    aget-object v0, v0, p1

    iget-object v0, v0, Lzte/contact/zteUsimPhoneBookManager$usimphonebook;->adnlist:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getanrlist(I)Ljava/util/ArrayList;
    .locals 1
    .param p1, "recnumber"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/uicc/AdnRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 267
    iget-object v0, p0, Lzte/contact/zteUsimPhoneBookManager;->upb:[Lzte/contact/zteUsimPhoneBookManager$usimphonebook;

    aget-object v0, v0, p1

    iget-object v0, v0, Lzte/contact/zteUsimPhoneBookManager$usimphonebook;->anrlist:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getemaillist(I)Ljava/util/ArrayList;
    .locals 1
    .param p1, "recnumber"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/uicc/AdnRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 264
    iget-object v0, p0, Lzte/contact/zteUsimPhoneBookManager;->upb:[Lzte/contact/zteUsimPhoneBookManager$usimphonebook;

    aget-object v0, v0, p1

    iget-object v0, v0, Lzte/contact/zteUsimPhoneBookManager$usimphonebook;->emaillist:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getiaplist(I)Ljava/util/ArrayList;
    .locals 1
    .param p1, "recnumber"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<[B>;"
        }
    .end annotation

    .prologue
    .line 261
    iget-object v0, p0, Lzte/contact/zteUsimPhoneBookManager;->upb:[Lzte/contact/zteUsimPhoneBookManager$usimphonebook;

    aget-object v0, v0, p1

    iget-object v0, v0, Lzte/contact/zteUsimPhoneBookManager$usimphonebook;->iaplist:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getpbrNumbers()I
    .locals 1

    .prologue
    .line 207
    iget v0, p0, Lzte/contact/zteUsimPhoneBookManager;->pbrNumbers:I

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 22
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1209
    const/16 v4, 0xff

    .line 1211
    .local v4, "adnAnrRecNum":I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v18, v0

    packed-switch v18, :pswitch_data_0

    .line 1441
    :goto_0
    :pswitch_0
    return-void

    .line 1214
    :pswitch_1
    move-object/from16 v0, p1

    iget-object v7, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/os/AsyncResult;

    .line 1215
    .local v7, "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, p1

    iget v8, v0, Landroid/os/Message;->arg1:I

    .line 1217
    .local v8, "efId":I
    const-string v18, "zteUsimPhoneBookManager"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "got EVENT_GET_EF_FILE_RECORD_SIZE_DONE efId = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ",ar.exception = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget-object v0, v7, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1219
    iget-object v0, v7, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v18, v0

    if-nez v18, :cond_0

    .line 1221
    :try_start_0
    iget-object v0, v7, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, [I

    move-object/from16 v0, v18

    check-cast v0, [I

    move-object v14, v0

    .line 1222
    .local v14, "recordSize":[I
    const-string v18, "zteUsimPhoneBookManager"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "got EVENT_GET_EF_FILE_RECORD_SIZE_DONE,recordSize[0]="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const/16 v20, 0x0

    aget v20, v14, v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1223
    const-string v18, "zteUsimPhoneBookManager"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "got EVENT_GET_EF_FILE_RECORD_SIZE_DONE,recordSize[1]="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const/16 v20, 0x1

    aget v20, v14, v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1224
    const-string v18, "zteUsimPhoneBookManager"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "got EVENT_GET_EF_FILE_RECORD_SIZE_DONE,recordSize[2]="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const/16 v20, 0x2

    aget v20, v14, v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1225
    move-object/from16 v0, p0

    iget-object v0, v0, Lzte/contact/zteUsimPhoneBookManager;->mRecordSize:Ljava/util/Map;

    move-object/from16 v18, v0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v0, v1, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1230
    .end local v14    # "recordSize":[I
    :cond_0
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lzte/contact/zteUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    move-object/from16 v19, v0

    monitor-enter v19

    .line 1231
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lzte/contact/zteUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->notify()V

    .line 1232
    monitor-exit v19

    goto/16 :goto_0

    :catchall_0
    move-exception v18

    monitor-exit v19
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v18

    .line 1226
    :catch_0
    move-exception v11

    .line 1227
    .local v11, "ex":Ljava/lang/Exception;
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "EVENT_GET_EF_FILE_RECORD_SIZE_DONE Exception  = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lzte/contact/zteUsimPhoneBookManager;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 1236
    .end local v7    # "ar":Landroid/os/AsyncResult;
    .end local v8    # "efId":I
    .end local v11    # "ex":Ljava/lang/Exception;
    :pswitch_2
    move-object/from16 v0, p1

    iget-object v7, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/os/AsyncResult;

    .line 1237
    .restart local v7    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v7, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v18, v0

    if-nez v18, :cond_1

    .line 1238
    iget-object v0, v7, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lzte/contact/zteUsimPhoneBookManager;->createPbrFile(Ljava/util/ArrayList;)V

    .line 1239
    iget-object v0, v7, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lzte/contact/zteUsimPhoneBookManager;->createPbrFileSfi(Ljava/util/ArrayList;)V

    .line 1241
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lzte/contact/zteUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    move-object/from16 v19, v0

    monitor-enter v19

    .line 1242
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lzte/contact/zteUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->notify()V

    .line 1243
    monitor-exit v19

    goto/16 :goto_0

    :catchall_1
    move-exception v18

    monitor-exit v19
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v18

    .line 1247
    .end local v7    # "ar":Landroid/os/AsyncResult;
    :pswitch_3
    move-object/from16 v0, p1

    iget-object v7, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/os/AsyncResult;

    .line 1248
    .restart local v7    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->arg1:I

    .line 1249
    .local v13, "recNum":I
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "EVENT_USIM_ADN_LOAD_DONE recNum = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lzte/contact/zteUsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1250
    iget-object v0, v7, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v18, v0

    if-nez v18, :cond_2

    .line 1252
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lzte/contact/zteUsimPhoneBookManager;->upb:[Lzte/contact/zteUsimPhoneBookManager$usimphonebook;

    move-object/from16 v18, v0

    aget-object v18, v18, v13

    move-object/from16 v0, v18

    iget-object v0, v0, Lzte/contact/zteUsimPhoneBookManager$usimphonebook;->adnlist:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    iget-object v0, v7, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Ljava/util/ArrayList;

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 1257
    :cond_2
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lzte/contact/zteUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    move-object/from16 v19, v0

    monitor-enter v19

    .line 1258
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lzte/contact/zteUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->notify()V

    .line 1259
    monitor-exit v19

    goto/16 :goto_0

    :catchall_2
    move-exception v18

    monitor-exit v19
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v18

    .line 1253
    :catch_1
    move-exception v11

    .line 1254
    .restart local v11    # "ex":Ljava/lang/Exception;
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "EVENT_USIM_ADN_LOAD_DONE Exception  = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lzte/contact/zteUsimPhoneBookManager;->log(Ljava/lang/String;)V

    goto :goto_2

    .line 1262
    .end local v7    # "ar":Landroid/os/AsyncResult;
    .end local v11    # "ex":Ljava/lang/Exception;
    .end local v13    # "recNum":I
    :pswitch_4
    move-object/from16 v0, p1

    iget-object v7, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/os/AsyncResult;

    .line 1263
    .restart local v7    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->arg1:I

    .line 1264
    .restart local v13    # "recNum":I
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "EVENT_IAP_LOAD_DONE recNum = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lzte/contact/zteUsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1265
    iget-object v0, v7, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v18, v0

    if-nez v18, :cond_3

    .line 1266
    iget-object v0, v7, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Ljava/util/ArrayList;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lzte/contact/zteUsimPhoneBookManager;->mIapFileRecord:Ljava/util/ArrayList;

    .line 1268
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lzte/contact/zteUsimPhoneBookManager;->upb:[Lzte/contact/zteUsimPhoneBookManager$usimphonebook;

    move-object/from16 v18, v0

    aget-object v19, v18, v13

    iget-object v0, v7, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Ljava/util/ArrayList;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    iput-object v0, v1, Lzte/contact/zteUsimPhoneBookManager$usimphonebook;->iaplist:Ljava/util/ArrayList;

    .line 1270
    move-object/from16 v0, p0

    iget-object v0, v0, Lzte/contact/zteUsimPhoneBookManager;->upb:[Lzte/contact/zteUsimPhoneBookManager$usimphonebook;

    move-object/from16 v18, v0

    aget-object v18, v18, v13

    move-object/from16 v0, v18

    iget-object v0, v0, Lzte/contact/zteUsimPhoneBookManager$usimphonebook;->iaplist:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v13}, Lzte/contact/zteUsimPhoneBookManager;->getUsedEmailAndAnrItems(Ljava/util/ArrayList;I)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 1276
    :cond_3
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lzte/contact/zteUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    move-object/from16 v19, v0

    monitor-enter v19

    .line 1277
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lzte/contact/zteUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->notify()V

    .line 1278
    monitor-exit v19

    goto/16 :goto_0

    :catchall_3
    move-exception v18

    monitor-exit v19
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw v18

    .line 1272
    :catch_2
    move-exception v11

    .line 1273
    .restart local v11    # "ex":Ljava/lang/Exception;
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "EVENT_IAP_LOAD_DONE Exception ex = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lzte/contact/zteUsimPhoneBookManager;->log(Ljava/lang/String;)V

    goto :goto_3

    .line 1283
    .end local v7    # "ar":Landroid/os/AsyncResult;
    .end local v11    # "ex":Ljava/lang/Exception;
    .end local v13    # "recNum":I
    :pswitch_5
    move-object/from16 v0, p1

    iget-object v7, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/os/AsyncResult;

    .line 1284
    .restart local v7    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->arg1:I

    .line 1285
    .restart local v13    # "recNum":I
    move-object/from16 v0, p1

    iget v8, v0, Landroid/os/Message;->arg2:I

    .line 1286
    .restart local v8    # "efId":I
    const-string v18, "RIL_zteUsimPhoneBookManager"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "got EVENT_EMAIL_USED_ITEMS_LOAD_DONE,recNum="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1287
    const-string v18, "RIL_zteUsimPhoneBookManager"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "handle EVENT_EMAIL_USED_ITEMS_LOAD_DONE,ar.exception="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget-object v0, v7, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1288
    iget-object v0, v7, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v18, v0

    if-nez v18, :cond_9

    .line 1289
    const/4 v15, 0x0

    .line 1290
    .local v15, "usedEmailFileRecord":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    iget-object v15, v7, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    .end local v15    # "usedEmailFileRecord":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    check-cast v15, Ljava/util/ArrayList;

    .line 1291
    .restart local v15    # "usedEmailFileRecord":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    const-string v18, "RIL_zteUsimPhoneBookManager"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "handle EVENT_EMAIL_USED_ITEMS_LOAD_DONE,usedEmailFileRecord="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1292
    if-eqz v15, :cond_4

    .line 1293
    const-string v18, "RIL_zteUsimPhoneBookManager"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "handle EVENT_EMAIL_USED_ITEMS_LOAD_DONE,usedEmailFileRecord.size()="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1295
    :cond_4
    const/4 v10, 0x0

    .line 1296
    .local v10, "emailRec":[B
    const/16 v5, 0xff

    .line 1297
    .local v5, "adnEmailRecNum":I
    const/4 v9, 0x0

    .line 1300
    .local v9, "emailItemsUsed":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lzte/contact/zteUsimPhoneBookManager;->mEmailItemsUsed:Ljava/util/HashMap;

    move-object/from16 v18, v0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v0, v18

    check-cast v0, Ljava/util/ArrayList;

    move-object v9, v0

    .line 1302
    const/4 v14, 0x0

    .line 1303
    .restart local v14    # "recordSize":[I
    move-object/from16 v0, p0

    iget-object v0, v0, Lzte/contact/zteUsimPhoneBookManager;->mRecordSize:Ljava/util/Map;

    move-object/from16 v18, v0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-interface/range {v18 .. v19}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    .end local v14    # "recordSize":[I
    check-cast v14, [I

    .line 1304
    .restart local v14    # "recordSize":[I
    if-nez v14, :cond_5

    .line 1305
    const-string v18, "RIL_zteUsimPhoneBookManager"

    const-string v19, " handle EVENT_EMAIL_USED_ITEMS_LOAD_DONE, error, recordSize == null"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1308
    :cond_5
    const-string v18, "RIL_zteUsimPhoneBookManager"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, " handle EVENT_EMAIL_USED_ITEMS_LOAD_DONE, recordSize[0] = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const/16 v20, 0x0

    aget v20, v14, v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1309
    const-string v18, "RIL_zteUsimPhoneBookManager"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, " handle EVENT_EMAIL_USED_ITEMS_LOAD_DONE, recordSize[1] = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const/16 v20, 0x1

    aget v20, v14, v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1310
    const-string v18, "RIL_zteUsimPhoneBookManager"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, " handle EVENT_EMAIL_USED_ITEMS_LOAD_DONE, recordSize[2] = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const/16 v20, 0x2

    aget v20, v14, v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1312
    const/16 v16, 0x0

    .line 1313
    .local v16, "usedEmailIndex":I
    const/4 v12, 0x0

    .local v12, "i":I
    move/from16 v17, v16

    .end local v16    # "usedEmailIndex":I
    .local v17, "usedEmailIndex":I
    :goto_4
    const/16 v18, 0x2

    aget v18, v14, v18

    move/from16 v0, v18

    if-ge v12, v0, :cond_9

    .line 1314
    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v3, v0, [Ljava/lang/String;

    .line 1315
    .local v3, "RecEmail":[Ljava/lang/String;
    new-instance v2, Lcom/android/internal/telephony/uicc/AdnRecord;

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/uicc/AdnRecord;-><init>([Ljava/lang/String;)V

    .line 1316
    .local v2, "Emaildata":Lcom/android/internal/telephony/uicc/AdnRecord;
    const-string v18, "RIL_zteUsimPhoneBookManager"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, " handle EVENT_EMAIL_USED_ITEMS_LOAD_DONE, i= "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1317
    const-string v18, "RIL_zteUsimPhoneBookManager"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, " handle EVENT_EMAIL_USED_ITEMS_LOAD_DONE, emailItemsUsed.contains(i+1) = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    add-int/lit8 v20, v12, 0x1

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1318
    add-int/lit8 v18, v12, 0x1

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_8

    .line 1319
    const-string v18, "RIL_zteUsimPhoneBookManager"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, " handle EVENT_EMAIL_USED_ITEMS_LOAD_DONE, usedEmailIndex= "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1320
    move/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v0, v18

    check-cast v0, [B

    move-object v10, v0

    .line 1321
    if-eqz v10, :cond_6

    .line 1322
    array-length v0, v10

    move/from16 v18, v0

    add-int/lit8 v18, v18, -0x1

    aget-byte v5, v10, v18

    .line 1324
    :cond_6
    const/16 v18, -0x1

    move/from16 v0, v18

    if-ne v5, v0, :cond_7

    const/16 v5, 0xff

    .line 1326
    :cond_7
    const/16 v18, 0x0

    add-int/lit8 v16, v17, 0x1

    .end local v17    # "usedEmailIndex":I
    .restart local v16    # "usedEmailIndex":I
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v15, v1}, Lzte/contact/zteUsimPhoneBookManager;->readEmailRecord(Ljava/util/ArrayList;I)Ljava/lang/String;

    move-result-object v19

    aput-object v19, v3, v18

    .line 1327
    const-string v18, "RIL_zteUsimPhoneBookManager"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, " handle EVENT_EMAIL_USED_ITEMS_LOAD_DONE, usedEmailIndex= "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ",RecEmail[0]="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const/16 v20, 0x0

    aget-object v20, v3, v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1333
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lzte/contact/zteUsimPhoneBookManager;->upb:[Lzte/contact/zteUsimPhoneBookManager$usimphonebook;

    move-object/from16 v18, v0

    aget-object v18, v18, v13

    move-object/from16 v0, v18

    iget-object v0, v0, Lzte/contact/zteUsimPhoneBookManager$usimphonebook;->valForEmailId:Ljava/util/Map;

    move-object/from16 v18, v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    add-int/lit8 v20, v12, 0x1

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-interface/range {v18 .. v20}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1334
    move-object/from16 v0, p0

    iget-object v0, v0, Lzte/contact/zteUsimPhoneBookManager;->Emaildatas:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1335
    move-object/from16 v0, p0

    iget-object v0, v0, Lzte/contact/zteUsimPhoneBookManager;->upb:[Lzte/contact/zteUsimPhoneBookManager$usimphonebook;

    move-object/from16 v18, v0

    aget-object v18, v18, v13

    move-object/from16 v0, v18

    iget-object v0, v0, Lzte/contact/zteUsimPhoneBookManager$usimphonebook;->emaillist:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1336
    const-string v18, "RIL_zteUsimPhoneBookManager"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "handle EVENT_EMAIL_USED_ITEMS_LOAD_DONE, Emaildata.email[0] = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/AdnRecord;->getEmails()[Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x0

    aget-object v20, v20, v21

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1337
    const-string v18, "RIL_zteUsimPhoneBookManager"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "handle EVENT_EMAIL_USED_ITEMS_LOAD_DONE, Emaildatas.size() = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lzte/contact/zteUsimPhoneBookManager;->Emaildatas:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1338
    const-string v18, "RIL_zteUsimPhoneBookManager"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "handle EVENT_EMAIL_USED_ITEMS_LOAD_DONE, upb[recNum].emaillist.size() = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lzte/contact/zteUsimPhoneBookManager;->upb:[Lzte/contact/zteUsimPhoneBookManager$usimphonebook;

    move-object/from16 v20, v0

    aget-object v20, v20, v13

    move-object/from16 v0, v20

    iget-object v0, v0, Lzte/contact/zteUsimPhoneBookManager$usimphonebook;->emaillist:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1313
    add-int/lit8 v12, v12, 0x1

    move/from16 v17, v16

    .end local v16    # "usedEmailIndex":I
    .restart local v17    # "usedEmailIndex":I
    goto/16 :goto_4

    .line 1329
    :cond_8
    const/16 v5, 0xff

    .line 1330
    const/16 v18, 0x0

    const/16 v19, 0x0

    aput-object v19, v3, v18
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    move/from16 v16, v17

    .end local v17    # "usedEmailIndex":I
    .restart local v16    # "usedEmailIndex":I
    goto/16 :goto_5

    .line 1340
    .end local v2    # "Emaildata":Lcom/android/internal/telephony/uicc/AdnRecord;
    .end local v3    # "RecEmail":[Ljava/lang/String;
    .end local v12    # "i":I
    .end local v14    # "recordSize":[I
    .end local v16    # "usedEmailIndex":I
    :catch_3
    move-exception v11

    .line 1341
    .restart local v11    # "ex":Ljava/lang/Exception;
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "EVENT_EMAIL_USED_ITEMS_LOAD_DONE Exception ex = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lzte/contact/zteUsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1344
    .end local v5    # "adnEmailRecNum":I
    .end local v9    # "emailItemsUsed":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v10    # "emailRec":[B
    .end local v11    # "ex":Ljava/lang/Exception;
    .end local v15    # "usedEmailFileRecord":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lzte/contact/zteUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    move-object/from16 v19, v0

    monitor-enter v19

    .line 1345
    :try_start_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lzte/contact/zteUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->notify()V

    .line 1346
    monitor-exit v19

    goto/16 :goto_0

    :catchall_4
    move-exception v18

    monitor-exit v19
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    throw v18

    .line 1350
    .end local v7    # "ar":Landroid/os/AsyncResult;
    .end local v8    # "efId":I
    .end local v13    # "recNum":I
    :pswitch_6
    move-object/from16 v0, p1

    iget-object v7, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/os/AsyncResult;

    .line 1351
    .restart local v7    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->arg2:I

    .line 1353
    .restart local v13    # "recNum":I
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "EVENT_ANR_USED_ITEMS_LOAD_DONE recNum = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lzte/contact/zteUsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1354
    const-string v18, "RIL_zteUsimPhoneBookManager"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "got EVENT_ANR_USED_ITEMS_LOAD_DONE,recNum="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1355
    iget-object v0, v7, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v18, v0

    if-nez v18, :cond_b

    .line 1357
    :try_start_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lzte/contact/zteUsimPhoneBookManager;->upb:[Lzte/contact/zteUsimPhoneBookManager$usimphonebook;

    move-object/from16 v18, v0

    aget-object v18, v18, v13

    move-object/from16 v0, v18

    iget-object v0, v0, Lzte/contact/zteUsimPhoneBookManager$usimphonebook;->anrlist:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    iget-object v0, v7, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Ljava/util/ArrayList;

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1358
    const/4 v12, 0x0

    .restart local v12    # "i":I
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lzte/contact/zteUsimPhoneBookManager;->upb:[Lzte/contact/zteUsimPhoneBookManager$usimphonebook;

    move-object/from16 v18, v0

    aget-object v18, v18, v13

    move-object/from16 v0, v18

    iget-object v0, v0, Lzte/contact/zteUsimPhoneBookManager$usimphonebook;->anrlist:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v18

    move/from16 v0, v18

    if-ge v12, v0, :cond_b

    .line 1359
    move-object/from16 v0, p0

    iget-object v0, v0, Lzte/contact/zteUsimPhoneBookManager;->upb:[Lzte/contact/zteUsimPhoneBookManager$usimphonebook;

    move-object/from16 v18, v0

    aget-object v18, v18, v13

    move-object/from16 v0, v18

    iget-object v0, v0, Lzte/contact/zteUsimPhoneBookManager$usimphonebook;->anrlist:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/uicc/AdnRecord;

    .line 1361
    .local v6, "anrAdn":Lcom/android/internal/telephony/uicc/AdnRecord;
    invoke-virtual {v6}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAnrIndex()I

    move-result v4

    .line 1363
    const/16 v18, -0x1

    move/from16 v0, v18

    if-ne v4, v0, :cond_a

    const/16 v4, 0xff

    .line 1364
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lzte/contact/zteUsimPhoneBookManager;->upb:[Lzte/contact/zteUsimPhoneBookManager$usimphonebook;

    move-object/from16 v18, v0

    aget-object v18, v18, v13

    move-object/from16 v0, v18

    iget-object v0, v0, Lzte/contact/zteUsimPhoneBookManager$usimphonebook;->valForAnrId:Ljava/util/Map;

    move-object/from16 v18, v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    add-int/lit8 v20, v12, 0x1

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-interface/range {v18 .. v20}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    .line 1358
    add-int/lit8 v12, v12, 0x1

    goto :goto_6

    .line 1366
    .end local v6    # "anrAdn":Lcom/android/internal/telephony/uicc/AdnRecord;
    .end local v12    # "i":I
    :catch_4
    move-exception v11

    .line 1367
    .restart local v11    # "ex":Ljava/lang/Exception;
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "EVENT_ANR_USED_ITEMS_LOAD_DONE Exception ex = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lzte/contact/zteUsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1371
    .end local v11    # "ex":Ljava/lang/Exception;
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lzte/contact/zteUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    move-object/from16 v19, v0

    monitor-enter v19

    .line 1372
    :try_start_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lzte/contact/zteUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->notify()V

    .line 1373
    monitor-exit v19

    goto/16 :goto_0

    :catchall_5
    move-exception v18

    monitor-exit v19
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    throw v18

    .line 1378
    .end local v7    # "ar":Landroid/os/AsyncResult;
    .end local v13    # "recNum":I
    :pswitch_7
    move-object/from16 v0, p1

    iget-object v7, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/os/AsyncResult;

    .line 1379
    .restart local v7    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->arg1:I

    .line 1380
    .restart local v13    # "recNum":I
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "EVENT_EMAIL_LOAD_DONE recNum = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lzte/contact/zteUsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1381
    iget-object v0, v7, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v18, v0

    if-nez v18, :cond_f

    .line 1382
    iget-object v0, v7, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Ljava/util/ArrayList;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lzte/contact/zteUsimPhoneBookManager;->mEmailFileRecord:Ljava/util/ArrayList;

    .line 1383
    const/4 v10, 0x0

    .line 1384
    .restart local v10    # "emailRec":[B
    const/16 v5, 0xff

    .line 1386
    .restart local v5    # "adnEmailRecNum":I
    const/4 v12, 0x0

    .restart local v12    # "i":I
    :goto_7
    :try_start_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lzte/contact/zteUsimPhoneBookManager;->mEmailFileRecord:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v18

    move/from16 v0, v18

    if-ge v12, v0, :cond_f

    .line 1388
    move-object/from16 v0, p0

    iget-object v0, v0, Lzte/contact/zteUsimPhoneBookManager;->mEmailFileRecord:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v0, v18

    check-cast v0, [B

    move-object v10, v0

    .line 1389
    if-eqz v10, :cond_c

    .line 1390
    invoke-static {}, Lzte/contact/zteUsimPhoneBookManager;->isEMAILTYP2()Z

    move-result v18

    if-eqz v18, :cond_e

    .line 1391
    array-length v0, v10

    move/from16 v18, v0

    add-int/lit8 v18, v18, -0x1

    aget-byte v5, v10, v18

    .line 1395
    :cond_c
    :goto_8
    const/16 v18, -0x1

    move/from16 v0, v18

    if-ne v5, v0, :cond_d

    const/16 v5, 0xff

    .line 1396
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lzte/contact/zteUsimPhoneBookManager;->upb:[Lzte/contact/zteUsimPhoneBookManager$usimphonebook;

    move-object/from16 v18, v0

    aget-object v18, v18, v13

    move-object/from16 v0, v18

    iget-object v0, v0, Lzte/contact/zteUsimPhoneBookManager$usimphonebook;->valForEmailId:Ljava/util/Map;

    move-object/from16 v18, v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    add-int/lit8 v20, v12, 0x1

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-interface/range {v18 .. v20}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1398
    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v3, v0, [Ljava/lang/String;

    .line 1399
    .restart local v3    # "RecEmail":[Ljava/lang/String;
    new-instance v2, Lcom/android/internal/telephony/uicc/AdnRecord;

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/uicc/AdnRecord;-><init>([Ljava/lang/String;)V

    .line 1400
    .restart local v2    # "Emaildata":Lcom/android/internal/telephony/uicc/AdnRecord;
    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lzte/contact/zteUsimPhoneBookManager;->mEmailFileRecord:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v12}, Lzte/contact/zteUsimPhoneBookManager;->readEmailRecord(Ljava/util/ArrayList;I)Ljava/lang/String;

    move-result-object v19

    aput-object v19, v3, v18

    .line 1401
    move-object/from16 v0, p0

    iget-object v0, v0, Lzte/contact/zteUsimPhoneBookManager;->Emaildatas:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1402
    move-object/from16 v0, p0

    iget-object v0, v0, Lzte/contact/zteUsimPhoneBookManager;->upb:[Lzte/contact/zteUsimPhoneBookManager$usimphonebook;

    move-object/from16 v18, v0

    aget-object v18, v18, v13

    move-object/from16 v0, v18

    iget-object v0, v0, Lzte/contact/zteUsimPhoneBookManager$usimphonebook;->emaillist:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_5

    .line 1386
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_7

    .line 1393
    .end local v2    # "Emaildata":Lcom/android/internal/telephony/uicc/AdnRecord;
    .end local v3    # "RecEmail":[Ljava/lang/String;
    :cond_e
    add-int/lit8 v5, v12, 0x1

    goto :goto_8

    .line 1404
    :catch_5
    move-exception v11

    .line 1405
    .restart local v11    # "ex":Ljava/lang/Exception;
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "EVENT_IAP_LOAD_DONE Exception ex = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lzte/contact/zteUsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1408
    .end local v5    # "adnEmailRecNum":I
    .end local v10    # "emailRec":[B
    .end local v11    # "ex":Ljava/lang/Exception;
    .end local v12    # "i":I
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lzte/contact/zteUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    move-object/from16 v19, v0

    monitor-enter v19

    .line 1409
    :try_start_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lzte/contact/zteUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->notify()V

    .line 1410
    monitor-exit v19

    goto/16 :goto_0

    :catchall_6
    move-exception v18

    monitor-exit v19
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    throw v18

    .line 1414
    .end local v7    # "ar":Landroid/os/AsyncResult;
    .end local v13    # "recNum":I
    :pswitch_8
    move-object/from16 v0, p1

    iget-object v7, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/os/AsyncResult;

    .line 1415
    .restart local v7    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->arg2:I

    .line 1417
    .restart local v13    # "recNum":I
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "EVENT_ANR_ALL_LOAD_DONE recNum = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lzte/contact/zteUsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1418
    iget-object v0, v7, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v18, v0

    if-nez v18, :cond_12

    .line 1420
    :try_start_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lzte/contact/zteUsimPhoneBookManager;->upb:[Lzte/contact/zteUsimPhoneBookManager$usimphonebook;

    move-object/from16 v18, v0

    aget-object v18, v18, v13

    move-object/from16 v0, v18

    iget-object v0, v0, Lzte/contact/zteUsimPhoneBookManager$usimphonebook;->anrlist:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    iget-object v0, v7, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Ljava/util/ArrayList;

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1421
    const/4 v12, 0x0

    .restart local v12    # "i":I
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lzte/contact/zteUsimPhoneBookManager;->upb:[Lzte/contact/zteUsimPhoneBookManager$usimphonebook;

    move-object/from16 v18, v0

    aget-object v18, v18, v13

    move-object/from16 v0, v18

    iget-object v0, v0, Lzte/contact/zteUsimPhoneBookManager$usimphonebook;->anrlist:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v18

    move/from16 v0, v18

    if-ge v12, v0, :cond_12

    .line 1422
    move-object/from16 v0, p0

    iget-object v0, v0, Lzte/contact/zteUsimPhoneBookManager;->upb:[Lzte/contact/zteUsimPhoneBookManager$usimphonebook;

    move-object/from16 v18, v0

    aget-object v18, v18, v13

    move-object/from16 v0, v18

    iget-object v0, v0, Lzte/contact/zteUsimPhoneBookManager$usimphonebook;->anrlist:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/uicc/AdnRecord;

    .line 1423
    .restart local v6    # "anrAdn":Lcom/android/internal/telephony/uicc/AdnRecord;
    invoke-virtual/range {p0 .. p0}, Lzte/contact/zteUsimPhoneBookManager;->isANRTYP2()Z

    move-result v18

    if-eqz v18, :cond_11

    .line 1424
    invoke-virtual {v6}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAnrIndex()I

    move-result v4

    .line 1428
    :goto_a
    const/16 v18, -0x1

    move/from16 v0, v18

    if-ne v4, v0, :cond_10

    const/16 v4, 0xff

    .line 1429
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lzte/contact/zteUsimPhoneBookManager;->upb:[Lzte/contact/zteUsimPhoneBookManager$usimphonebook;

    move-object/from16 v18, v0

    aget-object v18, v18, v13

    move-object/from16 v0, v18

    iget-object v0, v0, Lzte/contact/zteUsimPhoneBookManager$usimphonebook;->valForAnrId:Ljava/util/Map;

    move-object/from16 v18, v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    add-int/lit8 v20, v12, 0x1

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-interface/range {v18 .. v20}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_6

    .line 1421
    add-int/lit8 v12, v12, 0x1

    goto :goto_9

    .line 1426
    :cond_11
    add-int/lit8 v4, v12, 0x1

    goto :goto_a

    .line 1431
    .end local v6    # "anrAdn":Lcom/android/internal/telephony/uicc/AdnRecord;
    .end local v12    # "i":I
    :catch_6
    move-exception v11

    .line 1432
    .restart local v11    # "ex":Ljava/lang/Exception;
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "EVENT_ANR_ALL_LOAD_DONE Exception ex = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lzte/contact/zteUsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1435
    .end local v11    # "ex":Ljava/lang/Exception;
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lzte/contact/zteUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    move-object/from16 v19, v0

    monitor-enter v19

    .line 1436
    :try_start_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lzte/contact/zteUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->notify()V

    .line 1437
    monitor-exit v19

    goto/16 :goto_0

    :catchall_7
    move-exception v18

    monitor-exit v19
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_7

    throw v18

    .line 1211
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_7
        :pswitch_1
        :pswitch_0
        :pswitch_8
        :pswitch_0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public invalidateCache()V
    .locals 1

    .prologue
    .line 344
    const/4 v0, 0x1

    iput-boolean v0, p0, Lzte/contact/zteUsimPhoneBookManager;->mRefreshCache:Z

    .line 345
    return-void
.end method

.method public isANRTYP2()Z
    .locals 1

    .prologue
    .line 211
    iget-boolean v0, p0, Lzte/contact/zteUsimPhoneBookManager;->mAnrPresentInIap:Z

    return v0
.end method

.method public isSupportANR(I)Z
    .locals 4
    .param p1, "pbrindex"    # I

    .prologue
    const/4 v1, 0x0

    .line 221
    iget-object v2, p0, Lzte/contact/zteUsimPhoneBookManager;->mPbrFile:Lzte/contact/zteUsimPhoneBookManager$PbrFile;

    if-nez v2, :cond_1

    .line 229
    :cond_0
    :goto_0
    return v1

    .line 222
    :cond_1
    iget-object v2, p0, Lzte/contact/zteUsimPhoneBookManager;->mPbrFile:Lzte/contact/zteUsimPhoneBookManager$PbrFile;

    iget-object v2, v2, Lzte/contact/zteUsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    if-eqz v2, :cond_0

    .line 223
    iget-object v2, p0, Lzte/contact/zteUsimPhoneBookManager;->mPbrFile:Lzte/contact/zteUsimPhoneBookManager$PbrFile;

    iget-object v2, v2, Lzte/contact/zteUsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 224
    .local v0, "fileIds":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 227
    const/16 v2, 0xc4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 228
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isSupportEmail(I)Z
    .locals 4
    .param p1, "pbrindex"    # I

    .prologue
    const/4 v1, 0x0

    .line 234
    iget-object v2, p0, Lzte/contact/zteUsimPhoneBookManager;->mPbrFile:Lzte/contact/zteUsimPhoneBookManager$PbrFile;

    if-nez v2, :cond_1

    .line 242
    :cond_0
    :goto_0
    return v1

    .line 235
    :cond_1
    iget-object v2, p0, Lzte/contact/zteUsimPhoneBookManager;->mPbrFile:Lzte/contact/zteUsimPhoneBookManager$PbrFile;

    iget-object v2, v2, Lzte/contact/zteUsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    if-eqz v2, :cond_0

    .line 236
    iget-object v2, p0, Lzte/contact/zteUsimPhoneBookManager;->mPbrFile:Lzte/contact/zteUsimPhoneBookManager$PbrFile;

    iget-object v2, v2, Lzte/contact/zteUsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 237
    .local v0, "fileIds":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 240
    const/16 v2, 0xca

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 241
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isSupportIAP(I)Z
    .locals 4
    .param p1, "pbrindex"    # I

    .prologue
    const/4 v1, 0x0

    .line 246
    iget-object v2, p0, Lzte/contact/zteUsimPhoneBookManager;->mPbrFile:Lzte/contact/zteUsimPhoneBookManager$PbrFile;

    if-nez v2, :cond_1

    .line 254
    :cond_0
    :goto_0
    return v1

    .line 247
    :cond_1
    iget-object v2, p0, Lzte/contact/zteUsimPhoneBookManager;->mPbrFile:Lzte/contact/zteUsimPhoneBookManager$PbrFile;

    iget-object v2, v2, Lzte/contact/zteUsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    if-eqz v2, :cond_0

    .line 248
    iget-object v2, p0, Lzte/contact/zteUsimPhoneBookManager;->mPbrFile:Lzte/contact/zteUsimPhoneBookManager$PbrFile;

    iget-object v2, v2, Lzte/contact/zteUsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 249
    .local v0, "fileIds":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 252
    const/16 v2, 0xc1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 253
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public loadEfFilesFromUsim()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/uicc/AdnRecord;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 273
    iget-object v3, p0, Lzte/contact/zteUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 274
    :try_start_0
    iget-object v4, p0, Lzte/contact/zteUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 275
    iget-boolean v2, p0, Lzte/contact/zteUsimPhoneBookManager;->mRefreshCache:Z

    if-eqz v2, :cond_0

    .line 276
    const/4 v2, 0x0

    iput-boolean v2, p0, Lzte/contact/zteUsimPhoneBookManager;->mRefreshCache:Z

    .line 277
    invoke-direct {p0}, Lzte/contact/zteUsimPhoneBookManager;->refreshCache()V

    .line 279
    :cond_0
    iget-object v2, p0, Lzte/contact/zteUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    monitor-exit v3

    .line 316
    :goto_0
    return-object v2

    .line 282
    :cond_1
    iget-object v4, p0, Lzte/contact/zteUsimPhoneBookManager;->mIsPbrPresent:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_2

    monitor-exit v3

    goto :goto_0

    .line 315
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 286
    :cond_2
    :try_start_1
    iget-object v4, p0, Lzte/contact/zteUsimPhoneBookManager;->mPbrFile:Lzte/contact/zteUsimPhoneBookManager$PbrFile;

    if-nez v4, :cond_3

    .line 287
    invoke-direct {p0}, Lzte/contact/zteUsimPhoneBookManager;->readPbrFileAndWait()V

    .line 290
    :cond_3
    iget-object v4, p0, Lzte/contact/zteUsimPhoneBookManager;->mPbrFile:Lzte/contact/zteUsimPhoneBookManager$PbrFile;

    if-nez v4, :cond_4

    monitor-exit v3

    goto :goto_0

    .line 292
    :cond_4
    invoke-direct {p0}, Lzte/contact/zteUsimPhoneBookManager;->getEfFileRecordSize()V

    .line 294
    iget-object v2, p0, Lzte/contact/zteUsimPhoneBookManager;->mPbrFile:Lzte/contact/zteUsimPhoneBookManager$PbrFile;

    iget-object v2, v2, Lzte/contact/zteUsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v1

    .line 296
    .local v1, "numRecs":I
    iput v1, p0, Lzte/contact/zteUsimPhoneBookManager;->pbrNumbers:I

    .line 297
    new-array v2, v1, [Lzte/contact/zteUsimPhoneBookManager$usimphonebook;

    iput-object v2, p0, Lzte/contact/zteUsimPhoneBookManager;->upb:[Lzte/contact/zteUsimPhoneBookManager$usimphonebook;

    .line 298
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_8

    .line 299
    iget-object v2, p0, Lzte/contact/zteUsimPhoneBookManager;->upb:[Lzte/contact/zteUsimPhoneBookManager$usimphonebook;

    new-instance v4, Lzte/contact/zteUsimPhoneBookManager$usimphonebook;

    invoke-direct {v4, p0}, Lzte/contact/zteUsimPhoneBookManager$usimphonebook;-><init>(Lzte/contact/zteUsimPhoneBookManager;)V

    aput-object v4, v2, v0

    .line 300
    invoke-direct {p0, v0}, Lzte/contact/zteUsimPhoneBookManager;->readAdnFileAndWait(I)V

    .line 301
    invoke-virtual {p0, v0}, Lzte/contact/zteUsimPhoneBookManager;->isSupportIAP(I)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-direct {p0, v0}, Lzte/contact/zteUsimPhoneBookManager;->readIapFileAndWait(I)V

    .line 302
    :cond_5
    invoke-virtual {p0, v0}, Lzte/contact/zteUsimPhoneBookManager;->isSupportEmail(I)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-direct {p0, v0}, Lzte/contact/zteUsimPhoneBookManager;->readEmailFileAndWait(I)V

    .line 303
    :cond_6
    invoke-virtual {p0, v0}, Lzte/contact/zteUsimPhoneBookManager;->isSupportANR(I)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-direct {p0, v0}, Lzte/contact/zteUsimPhoneBookManager;->readAnrFileAndWait(I)V

    .line 298
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 308
    :cond_8
    const-string v2, "RIL_zteUsimPhoneBookManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "loadEfFilesFromUsim mPbrFile = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lzte/contact/zteUsimPhoneBookManager;->mPbrFile:Lzte/contact/zteUsimPhoneBookManager$PbrFile;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    iget-object v2, p0, Lzte/contact/zteUsimPhoneBookManager;->mPbrFile:Lzte/contact/zteUsimPhoneBookManager$PbrFile;

    if-eqz v2, :cond_9

    .line 310
    const/4 v0, 0x0

    :goto_2
    if-ge v0, v1, :cond_9

    .line 311
    invoke-direct {p0, v0}, Lzte/contact/zteUsimPhoneBookManager;->updatePhoneRecord(I)V

    .line 310
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 315
    :cond_9
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 316
    iget-object v2, p0, Lzte/contact/zteUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    goto/16 :goto_0
.end method

.method public loadUsimRecord()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/uicc/AdnRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1629
    iget-object v0, p0, Lzte/contact/zteUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    return-object v0
.end method

.method parseType1Anr(III)V
    .locals 4
    .param p1, "numRecs"    # I
    .param p2, "recNum"    # I
    .param p3, "oldNumAdnRec"    # I

    .prologue
    .line 978
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lzte/contact/zteUsimPhoneBookManager;->mAnrForAdnRec:Ljava/util/Map;

    .line 979
    if-lez p2, :cond_2

    .line 980
    move v1, p3

    .local v1, "i":I
    :goto_0
    if-ge v1, p1, :cond_5

    .line 981
    sub-int v2, v1, p3

    invoke-direct {p0, v2}, Lzte/contact/zteUsimPhoneBookManager;->readAnrRecord(I)Ljava/lang/String;

    move-result-object v0

    .line 982
    .local v0, "anr":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 980
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 986
    :cond_1
    iget-object v2, p0, Lzte/contact/zteUsimPhoneBookManager;->mAnrForAdnRec:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 989
    .end local v0    # "anr":Ljava/lang/String;
    .end local v1    # "i":I
    :cond_2
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    if-ge v1, p1, :cond_5

    .line 990
    invoke-direct {p0, v1}, Lzte/contact/zteUsimPhoneBookManager;->readAnrRecord(I)Ljava/lang/String;

    move-result-object v0

    .line 991
    .restart local v0    # "anr":Ljava/lang/String;
    if-eqz v0, :cond_3

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 989
    :cond_3
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 995
    :cond_4
    iget-object v2, p0, Lzte/contact/zteUsimPhoneBookManager;->mAnrForAdnRec:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 998
    .end local v0    # "anr":Ljava/lang/String;
    :cond_5
    return-void
.end method

.method parseType1EmailFile(II)V
    .locals 9
    .param p1, "recordNum"    # I
    .param p2, "oldNumAdnRec"    # I

    .prologue
    .line 1014
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    iput-object v7, p0, Lzte/contact/zteUsimPhoneBookManager;->mEmailsForAdnRec:Ljava/util/Map;

    .line 1015
    const/4 v3, 0x0

    .line 1017
    .local v3, "emailRec":[B
    const/4 v5, 0x0

    .line 1018
    .local v5, "recIndex":I
    const/16 v0, 0xff

    .line 1019
    .local v0, "adnRecNum":I
    if-lez p1, :cond_1

    .line 1020
    move v5, p2

    .line 1024
    :goto_0
    move v4, v5

    .local v4, "i":I
    :goto_1
    iget-object v7, p0, Lzte/contact/zteUsimPhoneBookManager;->mEmailFileRecord:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v4, v7, :cond_2

    .line 1026
    :try_start_0
    iget-object v7, p0, Lzte/contact/zteUsimPhoneBookManager;->mEmailFileRecord:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "emailRec":[B
    check-cast v3, [B
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1031
    .restart local v3    # "emailRec":[B
    invoke-static {}, Lzte/contact/zteUsimPhoneBookManager;->isEMAILTYP2()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1032
    array-length v7, v3

    add-int/lit8 v7, v7, -0x1

    aget-byte v0, v3, v7

    .line 1033
    const/16 v7, 0xff

    if-ne v0, v7, :cond_4

    .line 1024
    :cond_0
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1022
    .end local v4    # "i":I
    :cond_1
    const/4 v5, 0x0

    goto :goto_0

    .line 1027
    .end local v3    # "emailRec":[B
    .restart local v4    # "i":I
    :catch_0
    move-exception v1

    .line 1028
    .local v1, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string v7, "RIL_zteUsimPhoneBookManager"

    const-string v8, "Error: Improper ICC card: No email record for ADN, continuing"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1051
    .end local v1    # "e":Ljava/lang/IndexOutOfBoundsException;
    :cond_2
    return-void

    .line 1035
    .restart local v3    # "emailRec":[B
    :cond_3
    add-int/lit8 v0, v4, 0x1

    .line 1038
    :cond_4
    iget-object v7, p0, Lzte/contact/zteUsimPhoneBookManager;->mEmailFileRecord:Ljava/util/ArrayList;

    invoke-direct {p0, v7, v4}, Lzte/contact/zteUsimPhoneBookManager;->readEmailRecord(Ljava/util/ArrayList;I)Ljava/lang/String;

    move-result-object v2

    .line 1039
    .local v2, "email":Ljava/lang/String;
    if-eqz v2, :cond_0

    const-string v7, ""

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 1043
    iget-object v7, p0, Lzte/contact/zteUsimPhoneBookManager;->mEmailsForAdnRec:Ljava/util/Map;

    add-int/lit8 v8, v0, -0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    .line 1044
    .local v6, "val":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v6, :cond_5

    .line 1045
    new-instance v6, Ljava/util/ArrayList;

    .end local v6    # "val":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1047
    .restart local v6    # "val":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_5
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1049
    iget-object v7, p0, Lzte/contact/zteUsimPhoneBookManager;->mEmailsForAdnRec:Ljava/util/Map;

    add-int/lit8 v8, v0, -0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2
.end method

.method parseType1IapFile(II)V
    .locals 4
    .param p1, "recordNum"    # I
    .param p2, "oldNumAdnRec"    # I

    .prologue
    .line 1054
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lzte/contact/zteUsimPhoneBookManager;->mIapForAdnRec:Ljava/util/Map;

    .line 1055
    if-lez p1, :cond_1

    .line 1056
    move v0, p2

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lzte/contact/zteUsimPhoneBookManager;->mIapFileRecord:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 1057
    sub-int v2, v0, p2

    invoke-direct {p0, v2}, Lzte/contact/zteUsimPhoneBookManager;->readIapRecord(I)[B

    move-result-object v1

    .line 1058
    .local v1, "iap":[B
    if-nez v1, :cond_0

    .line 1056
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1062
    :cond_0
    iget-object v2, p0, Lzte/contact/zteUsimPhoneBookManager;->mIapForAdnRec:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1065
    .end local v0    # "i":I
    .end local v1    # "iap":[B
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2
    iget-object v2, p0, Lzte/contact/zteUsimPhoneBookManager;->mIapFileRecord:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 1066
    invoke-direct {p0, v0}, Lzte/contact/zteUsimPhoneBookManager;->readIapRecord(I)[B

    move-result-object v1

    .line 1067
    .restart local v1    # "iap":[B
    if-nez v1, :cond_2

    .line 1065
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1071
    :cond_2
    iget-object v2, p0, Lzte/contact/zteUsimPhoneBookManager;->mIapForAdnRec:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 1075
    .end local v1    # "iap":[B
    :cond_3
    return-void
.end method

.method public reset()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 195
    iget-object v0, p0, Lzte/contact/zteUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 196
    iput-object v1, p0, Lzte/contact/zteUsimPhoneBookManager;->mIapFileRecord:Ljava/util/ArrayList;

    .line 197
    iput-object v1, p0, Lzte/contact/zteUsimPhoneBookManager;->mEmailFileRecord:Ljava/util/ArrayList;

    .line 198
    iput-object v1, p0, Lzte/contact/zteUsimPhoneBookManager;->mPbrFile:Lzte/contact/zteUsimPhoneBookManager$PbrFile;

    .line 199
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lzte/contact/zteUsimPhoneBookManager;->mIsPbrPresent:Ljava/lang/Boolean;

    .line 200
    const/4 v0, 0x0

    iput-boolean v0, p0, Lzte/contact/zteUsimPhoneBookManager;->mRefreshCache:Z

    .line 201
    return-void
.end method
