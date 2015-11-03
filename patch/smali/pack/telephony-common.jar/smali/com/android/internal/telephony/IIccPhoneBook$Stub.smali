.class public abstract Lcom/android/internal/telephony/IIccPhoneBook$Stub;
.super Landroid/os/Binder;
.source "IIccPhoneBook.java"

# interfaces
.implements Lcom/android/internal/telephony/IIccPhoneBook;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/IIccPhoneBook;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/IIccPhoneBook$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.telephony.IIccPhoneBook"

.field static final TRANSACTION_getAdnCount:I = 0x7

.field static final TRANSACTION_getAdnRecordsInEf:I = 0x1

.field static final TRANSACTION_getAdnRecordsSize:I = 0x5

.field static final TRANSACTION_getAnrCount:I = 0x8

.field static final TRANSACTION_getAnrRecordsSize:I = 0x12

.field static final TRANSACTION_getEmailCount:I = 0x9

.field static final TRANSACTION_getEmailRecordsSize:I = 0x13

.field static final TRANSACTION_getExt1RecordsSize:I = 0x19

.field static final TRANSACTION_getSimCardType:I = 0xc

.field static final TRANSACTION_getSimSize:I = 0xf

.field static final TRANSACTION_getSimTotalSize:I = 0x1a

.field static final TRANSACTION_getSpareAnrCount:I = 0xa

.field static final TRANSACTION_getSpareEmailCount:I = 0xb

.field static final TRANSACTION_getTagRecordsSize:I = 0x11

.field static final TRANSACTION_getUsimAdnRecordsSize:I = 0xd

.field static final TRANSACTION_getUsimSize:I = 0xe

.field static final TRANSACTION_getsimcap:I = 0x14

.field static final TRANSACTION_isANRSpaceFull:I = 0x17

.field static final TRANSACTION_isEmailSpaceFull:I = 0x18

.field static final TRANSACTION_isSupportANR:I = 0x15

.field static final TRANSACTION_isSupportEmail:I = 0x16

.field static final TRANSACTION_updateAdnRecordsInEfByIndex:I = 0x4

.field static final TRANSACTION_updateAdnRecordsInEfBySearch:I = 0x2

.field static final TRANSACTION_updateAdnRecordsWithContentValuesInEfBySearch:I = 0x3

.field static final TRANSACTION_updateUsimAdnRecordsInEfByIndex:I = 0x6

.field static final TRANSACTION_updatepbRecordsInEfBySearch:I = 0x10


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 28
    const-string v0, "com.android.internal.telephony.IIccPhoneBook"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 29
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 36
    if-nez p0, :cond_0

    .line 37
    const/4 v0, 0x0

    .line 43
    :goto_0
    return-object v0

    .line 39
    :cond_0
    const-string v1, "com.android.internal.telephony.IIccPhoneBook"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 40
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/internal/telephony/IIccPhoneBook;

    if-eqz v1, :cond_1

    .line 41
    check-cast v0, Lcom/android/internal/telephony/IIccPhoneBook;

    goto :goto_0

    .line 43
    :cond_1
    new-instance v0, Lcom/android/internal/telephony/IIccPhoneBook$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/android/internal/telephony/IIccPhoneBook$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 47
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 15
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 51
    sparse-switch p1, :sswitch_data_0

    .line 368
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    :goto_0
    return v1

    .line 55
    :sswitch_0
    const-string v1, "com.android.internal.telephony.IIccPhoneBook"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 56
    const/4 v1, 0x1

    goto :goto_0

    .line 60
    :sswitch_1
    const-string v1, "com.android.internal.telephony.IIccPhoneBook"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 62
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 63
    .local v2, "_arg0":I
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->getAdnRecordsInEf(I)Ljava/util/List;

    move-result-object v14

    .line 64
    .local v14, "_result":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 65
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 66
    const/4 v1, 0x1

    goto :goto_0

    .line 70
    .end local v2    # "_arg0":I
    .end local v14    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    :sswitch_2
    const-string v1, "com.android.internal.telephony.IIccPhoneBook"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 72
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 74
    .restart local v2    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 76
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 78
    .local v4, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 80
    .local v5, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 82
    .local v6, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .local v7, "_arg5":Ljava/lang/String;
    move-object v1, p0

    .line 83
    invoke-virtual/range {v1 .. v7}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->updateAdnRecordsInEfBySearch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v13

    .line 84
    .local v13, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 85
    if-eqz v13, :cond_0

    const/4 v1, 0x1

    :goto_1
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 86
    const/4 v1, 0x1

    goto :goto_0

    .line 85
    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    .line 90
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":Ljava/lang/String;
    .end local v5    # "_arg3":Ljava/lang/String;
    .end local v6    # "_arg4":Ljava/lang/String;
    .end local v7    # "_arg5":Ljava/lang/String;
    .end local v13    # "_result":Z
    :sswitch_3
    const-string v1, "com.android.internal.telephony.IIccPhoneBook"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 92
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 94
    .restart local v2    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1

    .line 95
    sget-object v1, Landroid/content/ContentValues;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ContentValues;

    .line 101
    .local v3, "_arg1":Landroid/content/ContentValues;
    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 102
    .restart local v4    # "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->updateAdnRecordsWithContentValuesInEfBySearch(ILandroid/content/ContentValues;Ljava/lang/String;)Z

    move-result v13

    .line 103
    .restart local v13    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 104
    if-eqz v13, :cond_2

    const/4 v1, 0x1

    :goto_3
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 105
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 98
    .end local v3    # "_arg1":Landroid/content/ContentValues;
    .end local v4    # "_arg2":Ljava/lang/String;
    .end local v13    # "_result":Z
    :cond_1
    const/4 v3, 0x0

    .restart local v3    # "_arg1":Landroid/content/ContentValues;
    goto :goto_2

    .line 104
    .restart local v4    # "_arg2":Ljava/lang/String;
    .restart local v13    # "_result":Z
    :cond_2
    const/4 v1, 0x0

    goto :goto_3

    .line 109
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/content/ContentValues;
    .end local v4    # "_arg2":Ljava/lang/String;
    .end local v13    # "_result":Z
    :sswitch_4
    const-string v1, "com.android.internal.telephony.IIccPhoneBook"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 111
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 113
    .restart local v2    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 115
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 117
    .restart local v4    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 119
    .local v5, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "_arg4":Ljava/lang/String;
    move-object v1, p0

    .line 120
    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->updateAdnRecordsInEfByIndex(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)Z

    move-result v13

    .line 121
    .restart local v13    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 122
    if-eqz v13, :cond_3

    const/4 v1, 0x1

    :goto_4
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 123
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 122
    :cond_3
    const/4 v1, 0x0

    goto :goto_4

    .line 127
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":Ljava/lang/String;
    .end local v5    # "_arg3":I
    .end local v6    # "_arg4":Ljava/lang/String;
    .end local v13    # "_result":Z
    :sswitch_5
    const-string v1, "com.android.internal.telephony.IIccPhoneBook"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 129
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 130
    .restart local v2    # "_arg0":I
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->getAdnRecordsSize(I)[I

    move-result-object v13

    .line 131
    .local v13, "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 132
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 133
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 137
    .end local v2    # "_arg0":I
    .end local v13    # "_result":[I
    :sswitch_6
    const-string v1, "com.android.internal.telephony.IIccPhoneBook"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 139
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 141
    .restart local v2    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 143
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 145
    .restart local v4    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v5

    .line 147
    .local v5, "_arg3":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v6

    .line 149
    .local v6, "_arg4":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 151
    .local v7, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .local v8, "_arg6":Ljava/lang/String;
    move-object v1, p0

    .line 152
    invoke-virtual/range {v1 .. v8}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->updateUsimAdnRecordsInEfByIndex(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILjava/lang/String;)Z

    move-result v13

    .line 153
    .local v13, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 154
    if-eqz v13, :cond_4

    const/4 v1, 0x1

    :goto_5
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 155
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 154
    :cond_4
    const/4 v1, 0x0

    goto :goto_5

    .line 159
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":Ljava/lang/String;
    .end local v5    # "_arg3":[Ljava/lang/String;
    .end local v6    # "_arg4":[Ljava/lang/String;
    .end local v7    # "_arg5":I
    .end local v8    # "_arg6":Ljava/lang/String;
    .end local v13    # "_result":Z
    :sswitch_7
    const-string v1, "com.android.internal.telephony.IIccPhoneBook"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 160
    invoke-virtual {p0}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->getAdnCount()I

    move-result v13

    .line 161
    .local v13, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 162
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 163
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 167
    .end local v13    # "_result":I
    :sswitch_8
    const-string v1, "com.android.internal.telephony.IIccPhoneBook"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 168
    invoke-virtual {p0}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->getAnrCount()I

    move-result v13

    .line 169
    .restart local v13    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 170
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 171
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 175
    .end local v13    # "_result":I
    :sswitch_9
    const-string v1, "com.android.internal.telephony.IIccPhoneBook"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 176
    invoke-virtual {p0}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->getEmailCount()I

    move-result v13

    .line 177
    .restart local v13    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 178
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 179
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 183
    .end local v13    # "_result":I
    :sswitch_a
    const-string v1, "com.android.internal.telephony.IIccPhoneBook"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 184
    invoke-virtual {p0}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->getSpareAnrCount()I

    move-result v13

    .line 185
    .restart local v13    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 186
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 187
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 191
    .end local v13    # "_result":I
    :sswitch_b
    const-string v1, "com.android.internal.telephony.IIccPhoneBook"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 192
    invoke-virtual {p0}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->getSpareEmailCount()I

    move-result v13

    .line 193
    .restart local v13    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 194
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 195
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 199
    .end local v13    # "_result":I
    :sswitch_c
    const-string v1, "com.android.internal.telephony.IIccPhoneBook"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 200
    invoke-virtual {p0}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->getSimCardType()Z

    move-result v13

    .line 201
    .local v13, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 202
    if-eqz v13, :cond_5

    const/4 v1, 0x1

    :goto_6
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 203
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 202
    :cond_5
    const/4 v1, 0x0

    goto :goto_6

    .line 207
    .end local v13    # "_result":Z
    :sswitch_d
    const-string v1, "com.android.internal.telephony.IIccPhoneBook"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 209
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 210
    .restart local v2    # "_arg0":I
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->getUsimAdnRecordsSize(I)I

    move-result v13

    .line 211
    .local v13, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 212
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 213
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 217
    .end local v2    # "_arg0":I
    .end local v13    # "_result":I
    :sswitch_e
    const-string v1, "com.android.internal.telephony.IIccPhoneBook"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 219
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 220
    .restart local v2    # "_arg0":I
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->getUsimSize(I)I

    move-result v13

    .line 221
    .restart local v13    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 222
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 223
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 227
    .end local v2    # "_arg0":I
    .end local v13    # "_result":I
    :sswitch_f
    const-string v1, "com.android.internal.telephony.IIccPhoneBook"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 229
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 230
    .restart local v2    # "_arg0":I
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->getSimSize(I)I

    move-result v13

    .line 231
    .restart local v13    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 232
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 233
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 237
    .end local v2    # "_arg0":I
    .end local v13    # "_result":I
    :sswitch_10
    const-string v1, "com.android.internal.telephony.IIccPhoneBook"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 239
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 241
    .restart local v2    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 243
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 245
    .restart local v4    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 247
    .local v5, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 249
    .local v6, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 251
    .local v7, "_arg5":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 253
    .restart local v8    # "_arg6":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 255
    .local v9, "_arg7":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 257
    .local v10, "_arg8":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 259
    .local v11, "_arg9":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .local v12, "_arg10":Ljava/lang/String;
    move-object v1, p0

    .line 260
    invoke-virtual/range {v1 .. v12}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->updatepbRecordsInEfBySearch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 261
    .local v13, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 262
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 263
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 267
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":Ljava/lang/String;
    .end local v5    # "_arg3":Ljava/lang/String;
    .end local v6    # "_arg4":Ljava/lang/String;
    .end local v7    # "_arg5":Ljava/lang/String;
    .end local v8    # "_arg6":Ljava/lang/String;
    .end local v9    # "_arg7":Ljava/lang/String;
    .end local v10    # "_arg8":Ljava/lang/String;
    .end local v11    # "_arg9":Ljava/lang/String;
    .end local v12    # "_arg10":Ljava/lang/String;
    .end local v13    # "_result":Ljava/lang/String;
    :sswitch_11
    const-string v1, "com.android.internal.telephony.IIccPhoneBook"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 269
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 270
    .restart local v2    # "_arg0":I
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->getTagRecordsSize(I)I

    move-result v13

    .line 271
    .local v13, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 272
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 273
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 277
    .end local v2    # "_arg0":I
    .end local v13    # "_result":I
    :sswitch_12
    const-string v1, "com.android.internal.telephony.IIccPhoneBook"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 279
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 280
    .restart local v2    # "_arg0":I
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->getAnrRecordsSize(I)I

    move-result v13

    .line 281
    .restart local v13    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 282
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 283
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 287
    .end local v2    # "_arg0":I
    .end local v13    # "_result":I
    :sswitch_13
    const-string v1, "com.android.internal.telephony.IIccPhoneBook"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 289
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 290
    .restart local v2    # "_arg0":I
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->getEmailRecordsSize(I)I

    move-result v13

    .line 291
    .restart local v13    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 292
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 293
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 297
    .end local v2    # "_arg0":I
    .end local v13    # "_result":I
    :sswitch_14
    const-string v1, "com.android.internal.telephony.IIccPhoneBook"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 299
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 300
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->getsimcap(Ljava/lang/String;)Lzte/contact/simcap;

    move-result-object v13

    .line 301
    .local v13, "_result":Lzte/contact/simcap;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 302
    if-eqz v13, :cond_6

    .line 303
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 304
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v13, v0, v1}, Lzte/contact/simcap;->writeToParcel(Landroid/os/Parcel;I)V

    .line 309
    :goto_7
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 307
    :cond_6
    const/4 v1, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_7

    .line 313
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v13    # "_result":Lzte/contact/simcap;
    :sswitch_15
    const-string v1, "com.android.internal.telephony.IIccPhoneBook"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 314
    invoke-virtual {p0}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->isSupportANR()Z

    move-result v13

    .line 315
    .local v13, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 316
    if-eqz v13, :cond_7

    const/4 v1, 0x1

    :goto_8
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 317
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 316
    :cond_7
    const/4 v1, 0x0

    goto :goto_8

    .line 321
    .end local v13    # "_result":Z
    :sswitch_16
    const-string v1, "com.android.internal.telephony.IIccPhoneBook"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 322
    invoke-virtual {p0}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->isSupportEmail()Z

    move-result v13

    .line 323
    .restart local v13    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 324
    if-eqz v13, :cond_8

    const/4 v1, 0x1

    :goto_9
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 325
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 324
    :cond_8
    const/4 v1, 0x0

    goto :goto_9

    .line 329
    .end local v13    # "_result":Z
    :sswitch_17
    const-string v1, "com.android.internal.telephony.IIccPhoneBook"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 331
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 332
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->isANRSpaceFull(Ljava/lang/String;)Z

    move-result v13

    .line 333
    .restart local v13    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 334
    if-eqz v13, :cond_9

    const/4 v1, 0x1

    :goto_a
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 335
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 334
    :cond_9
    const/4 v1, 0x0

    goto :goto_a

    .line 339
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v13    # "_result":Z
    :sswitch_18
    const-string v1, "com.android.internal.telephony.IIccPhoneBook"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 341
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 342
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->isEmailSpaceFull(Ljava/lang/String;)Z

    move-result v13

    .line 343
    .restart local v13    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 344
    if-eqz v13, :cond_a

    const/4 v1, 0x1

    :goto_b
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 345
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 344
    :cond_a
    const/4 v1, 0x0

    goto :goto_b

    .line 349
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v13    # "_result":Z
    :sswitch_19
    const-string v1, "com.android.internal.telephony.IIccPhoneBook"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 351
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 352
    .local v2, "_arg0":I
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->getExt1RecordsSize(I)I

    move-result v13

    .line 353
    .local v13, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 354
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 355
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 359
    .end local v2    # "_arg0":I
    .end local v13    # "_result":I
    :sswitch_1a
    const-string v1, "com.android.internal.telephony.IIccPhoneBook"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 361
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 362
    .restart local v2    # "_arg0":I
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->getSimTotalSize(I)I

    move-result v13

    .line 363
    .restart local v13    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 364
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 365
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 51
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x19 -> :sswitch_19
        0x1a -> :sswitch_1a
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
